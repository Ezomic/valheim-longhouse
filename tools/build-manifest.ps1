<#
.SYNOPSIS
    Rebuilds the pack's manifest.json by reading every member mod's own manifest.

.DESCRIPTION
    A Thunderstore pack pins exact versions, so any single mod's bump makes the pack's
    manifest wrong. Hand-editing fifteen dependency lines every time is the kind of chore
    that gets skipped once and then ships a pack pinning a version nobody has.

    So the pins are generated. Each member's version is read from its own manifest.json,
    which is the same file its package is built from, and therefore cannot drift from what
    is actually published.

    The member list is deliberately explicit rather than "every folder with a manifest".
    Devkit has a manifest and must never appear in a pack handed to players, and a mod that
    is written but not ready should not be added to the pack the moment it exists.

.PARAMETER Root
    The repository root holding the mod folders. Defaults to this repo's parent.

.PARAMETER PackVersion
    Version for the pack itself. Defaults to whatever the existing manifest already says,
    so running this to refresh pins does not silently renumber the pack.

.EXAMPLE
    .\tools\build-manifest.ps1
    .\tools\build-manifest.ps1 -PackVersion 1.1.0
#>
[CmdletBinding()]
param(
    [string]$Root,
    [string]$PackVersion
)

$ErrorActionPreference = 'Stop'

$here = Split-Path -Parent $PSScriptRoot
if (-not $Root) { $Root = Split-Path -Parent $here }

# The mods the pack ships. Deliberately not "every folder with a manifest" - three separate
# reasons keep a mod out, and all three are decisions rather than oversights:
#
#   Devkit    is the menu these are tested through, and never goes to a player.
#   Surge     is published on its own.
#   Fiends    likewise.
#   Delve     likewise.
#   Nidling   is a creature, and a published creature commits the suite to its prefab name
#             forever: ZNetScene keys creatures by name hash and silently discards any ZDO
#             whose name no longer resolves, so renaming or withdrawing one later deletes
#             every instance players had standing in their worlds. It works and it has been
#             confirmed in game - it is held back because the name is the permanent part,
#             not because the mod is not ready.
#
# The three published-separately ones still have their own packages and remotes; they are
# simply not part of the set the version gate holds everyone to.
#
# Threshold was missing from this list until 2026-08-16, and that one was an oversight rather
# than a decision - it was split out of Rist after these pins were first generated and nothing
# brought it in. It belongs here for two reasons. It runs on the server at
# Requirement.Everyone, so a pack without it means every pack user is refused; and half of what
# it does runs on the client, guarding your own character in the menu against being started in
# the wrong world. That half only protects a player who actually has the mod.
# Stow and Furrow are absent because they are not separate mods any more - both ship
# inside Vaettir, and the pack gets them through that member.
$members = @(
    'core',
    'thralls',
    'stoker',
    'tether',
    'dovetail',
    'hoard',
    'rist',
    'wither',
    'vaettir',
    'threshold'
)

# BepInEx is pinned by the pack as well as by each mod. A pack that named only the mods
# would still work, because their own manifests carry it, but naming it here means the
# pack states its whole world in one file.
$bepinex = 'denikson-BepInExPack_Valheim-5.4.2333'

$manifestPath = Join-Path $here 'manifest.json'

if (-not $PackVersion) {
    if (Test-Path $manifestPath) {
        $PackVersion = (Get-Content $manifestPath -Raw | ConvertFrom-Json).version_number
    }
    if (-not $PackVersion) { $PackVersion = '0.1.0' }
}

$dependencies = New-Object System.Collections.Generic.List[string]
$dependencies.Add($bepinex)

$missing = New-Object System.Collections.Generic.List[string]

foreach ($member in $members) {
    $file = Join-Path (Join-Path $Root $member) 'manifest.json'

    if (-not (Test-Path $file)) {
        $missing.Add("$member (no manifest.json)")
        continue
    }

    $mod = Get-Content $file -Raw | ConvertFrom-Json

    if (-not $mod.name -or -not $mod.version_number) {
        $missing.Add("$member (manifest missing name or version_number)")
        continue
    }

    # Namespace-Package-Version, where Package is the member's own manifest name. Reading
    # it rather than assuming the folder name is what keeps this correct when a folder and
    # its package disagree - which they already do in places.
    $dependencies.Add("Ezomic-$($mod.name)-$($mod.version_number)")
}

# Loudly, not quietly. A pack silently short one mod is a pack that leaves every player
# without it, and the version gate then refuses them at the door for a reason nobody can see.
if ($missing.Count -gt 0) {
    Write-Error ("Cannot build the pack manifest. Unresolved members:`n  " + ($missing -join "`n  "))
    exit 1
}

$manifest = [ordered]@{
    name           = 'Longhouse'
    author         = 'Robbin Thijssen'
    version_number = $PackVersion
    website_url    = 'https://github.com/Ezomic/valheim-longhouse'
    description    = 'Every Ezomic mod, pinned to one set that a server will accept.'
    dependencies   = $dependencies
}

# UTF8Encoding($false) rather than Set-Content -Encoding utf8, which on PowerShell 5.1
# writes a BOM and mangles anything non-ASCII on the way through.
$json = ($manifest | ConvertTo-Json -Depth 4) -replace "`r`n", "`n"
[System.IO.File]::WriteAllText($manifestPath, $json + "`n", (New-Object System.Text.UTF8Encoding($false)))

Write-Host "Longhouse $PackVersion" -ForegroundColor Cyan
foreach ($d in $dependencies) { Write-Host "  $d" -ForegroundColor DarkGray }
Write-Host "`nWrote $manifestPath" -ForegroundColor Green
