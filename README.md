# Longhouse

Longhouse is the Ezomic modpack for Valheim. It contains the Ezomic mods at the versions used
by the Ezomic setup, which is the same set the Ezomic server runs.

There is no DLL in this package. It is a manifest naming each mod at an exact version, plus an
icon, this file and a changelog, so installing it through a mod manager installs the mods
themselves.

[Thunderstore page](https://thunderstore.io/c/valheim/p/Ezomic/Longhouse/) ·
[Changelog](CHANGELOG.md)

## What's in it

| Mod | What it does |
| --- | --- |
| [Longhouse Core](https://thunderstore.io/c/valheim/p/Ezomic/Longhouse_Core/) | Shared library for the rest: the multiplayer version check, host config sync, and arbitration of extra inventory rows. |
| [Yoke](https://thunderstore.io/c/valheim/p/Ezomic/Yoke/) | Bigger stacks, earned biome by biome. |
| [Rist](https://thunderstore.io/c/valheim/p/Ezomic/Rist/) | A character level beside the skills, carved into runestones you choose and deepen. |
| [Utangard](https://thunderstore.io/c/valheim/p/Ezomic/Utangard/) | Biomes nobody in your group has earned starve you: food burns away, buffs are refused. |
| [Vaettir](https://thunderstore.io/c/valheim/p/Ezomic/Vaettir/) | Grow a forest spirit from an ancient seed, build it a home, and it sorts your chests. |
| [Dyrr](https://thunderstore.io/c/valheim/p/Ezomic/Dyrr/) | A join policy for servers, plus client-side protection against loading a character into the wrong world. |
| [Sinka](https://thunderstore.io/c/valheim/p/Ezomic/Sinka/) | Snap points for chests, fences and anything else that will not line up. |
| [Kynda](https://thunderstore.io/c/valheim/p/Ezomic/Kynda/) | Load a smelter, kiln or fire several at a time. Fewer trips, the same metal out. |
| [Taum](https://thunderstore.io/c/valheim/p/Ezomic/Taum/) | Farm animals follow: Alt+E on a tamed boar or hen and it walks with you. |
| [Dvala](https://thunderstore.io/c/valheim/p/Ezomic/Dvala/) | A dungeon left alone for thirty in-game days fills back up. |
| [Lur](https://thunderstore.io/c/valheim/p/Ezomic/Lur/) | Sound a horn in one of Hildir's dungeons and its mini-boss wakes again. |
| [Skaft](https://thunderstore.io/c/valheim/p/Ezomic/Skaft/) | Hammer repair reaches further the higher your Crafting skill. |
| [Vaka](https://thunderstore.io/c/valheim/p/Ezomic/Vaka/) | Fires keep while you are away. A single absence costs one fuel, however long it was. |

The exact versions are in [manifest.json](manifest.json), and Thunderstore lists them on the
pack's page. Each mod has its own README and its own changelog.

Not everything Ezomic publishes is in here. Surge, for example, is published on its own and is
not part of the set. Mods are added to the pack once they have been played, not once they
compile.

## Version pinning

Every dependency is pinned at an exact version rather than a minimum, so two people on the same
pack version have the same files.

That matters because of what Longhouse Core does on connect. It compares each Ezomic mod's
version and build id between client and server, and the server rejects a client that does not
match. Matching pins are what keep that check from firing on someone who did nothing wrong.

The pack's version is its own and does not track any member's. It moves when the set changes: a
mod added, removed, or repinned. What changed inside a mod is in that mod's changelog; what
changed in the set is in [CHANGELOG.md](CHANGELOG.md).

If you update a single member mod inside a pack profile, you are no longer on the pinned set,
and a server still running the pack version will refuse you.

## Installation

Use a mod manager. Install **Longhouse** in the Thunderstore Mod Manager or r2modman, and it
pulls in every member mod plus BepInEx at the pinned versions.

Installing by hand means installing each member yourself at the version named in
[manifest.json](manifest.json). The pack contains no files to copy.

Requirements:

- **BepInEx 5.4.2350**
  ([denikson's Valheim pack](https://thunderstore.io/c/valheim/p/denikson/BepInExPack_Valheim/)),
  resolved as a dependency. These mods use the BepInEx 5 API and do not work on BepInEx 6.
- **Valheim 1.0 or later.** Pack 2.x is built against 1.0.7. Pack 1.1.7 is the last version for
  pre-1.0 Valheim; the two lines are not interchangeable.

Nothing here needs a server. The whole set works in single player and on a world you host
yourself.

## Configuration

The pack has no settings of its own. Each mod writes its own file to
`BepInEx\config\ezomic.valheim.<mod>.cfg` on first run, and its README covers what is in it.
Note that BepInEx saves those files on first run, so editing a default in a later version of a
mod does not change a config file you already have.

Two defaults worth knowing about before you play:

- **Dyrr protects your character on the client, and that is on by default.** It records which
  world each character belongs to and refuses to load that character into a different one, on
  local worlds (`Protect / ProtectCharacter`) and when joining a server (`Protect /
  ProtectOnServers`). Turn both off if you deliberately take one character between worlds.
- **Dyrr's server-side door refuses nobody until an admin enables it.** `Door / Enforce`
  defaults to `false`, which logs what would have been refused and lets everyone in.

## Multiplayer

Install the same pack version on the server and on every client.

Longhouse Core sends each Ezomic mod's version and build id during the connection handshake.
If the sets disagree, the server closes the connection: the client gets Valheim's
"Incompatible version" screen, a dialog naming the mods that disagree, and the same list in
`BepInEx\LogOutput.log`. Build ids are compared as well as version strings, so two DLLs both
claiming 1.2.0 are refused if they were compiled separately. Installing the published packages
on both ends rather than building them yourself is what keeps those ids identical.

Most members register prefabs or otherwise need to be on both sides, so a client carrying a mod
the server lacks is a refused connection rather than a missing feature. Two exceptions: Skaft
only has to be on the host, and clients without it are let in; Sinka only affects placement on
the client and stays out of the check entirely.

On a server the host's config values are applied to connected clients in memory. Client config
files are not modified and the client's own values come back on disconnect. Keybinds are held
back from that: the host's keys are not applied to yours.

Core's checks live in `BepInEx\config\ezomic.valheim.core.cfg`, all three on by default:

| Setting | Default | Effect |
| --- | --- | --- |
| `EnforceVersions` | `true` | Refuse a connection when client and server disagree about which Ezomic mods are installed, or about their versions. |
| `EnforceBuilds` | `true` | Also refuse when both ends claim the same version but are different builds. Turn this off if you compile the mods yourself on more than one machine. |
| `EnforceConfig` | `true` | Apply the host's settings on connected clients. |

Only Ezomic mods take part in this. Other mods you install are not checked, and not protected
from mismatching either.

## Compatibility

Built against Valheim 1.0.7, Unity 6000.0.75, BepInEx 5.4.23.5 and Harmony 2.9.

Several members add buildable pieces and items: Kynda's Tun and Woodrack, Vaettir's sapling,
spirit and stowing post, Taum's halter, Lur's horn. Valheim discards objects whose prefab it
cannot find, so removing one of those mods deletes everything already built or stored from it
the next time the world loads, with no message and no way back. Back up the world before
dropping a member.

No known conflicts with other mods, but the set is large and touches inventory, stacking,
containers, building and spawning, so overlap with another mod that does the same is likely.

## Troubleshooting

**Refused with "Incompatible version".** Client and server are not on the same set. Read the
tail of `BepInEx\LogOutput.log` on the client: Core names which mods disagree and which side is
ahead. Usually one end is a pack version behind.

**A setting has no effect on a server.** The host's value is applied while you are connected.
Change it on the server, or in your own config for single player.

**A mod looks like it is not running.** Each mod logs its name and version at startup in
`BepInEx\LogOutput.log`. If the line is missing, the mod did not load. If the line is there and
the feature is not, the config is the next place to look.

## Bug reports

Report in the [Discord](https://discord.gg/hJzAVaZ5wb) or on the
[issue tracker](https://github.com/Ezomic/valheim-longhouse/issues). The Discord is the better
place when you cannot tell which mod is responsible, which is most of the time.

Include:

- `BepInEx\LogOutput.log`. It names every mod that loaded and its version.
- Whether you were on a server or in single player, and the pack version on both ends.
- `AppData\LocalLow\IronGate\Valheim\Player.log` if a vanilla mechanic broke. Exceptions thrown
  mid-frame land there and not in the BepInEx log.

## Discord

[discord.gg/hJzAVaZ5wb](https://discord.gg/hJzAVaZ5wb) is where updates, support, bug reports
and compatibility questions go.

## Server

There is a small EU server on Amsterdam time running this pack, if you want somewhere to play.
Hard combat difficulty, resources at 1x, everything else vanilla, no application and no
activity requirements. It runs Dyrr with enforcement on, so bring a character that has never
played in another world. Connection details are in the Discord.

## Building the manifest

`tools\build-manifest.ps1` rewrites the pins so they do not have to be typed by hand:

```powershell
.\tools\build-manifest.ps1
.\tools\build-manifest.ps1 -PackVersion 2.1.0
```

It reads each member's own `manifest.json`, which is the file that mod's package is built from,
and rewrites `manifest.json` here. A member that is missing or malformed fails the run instead
of producing a shorter pack. With no `-PackVersion` it keeps the version the manifest already
carries, so refreshing pins does not renumber the pack. The member list is explicit, inside the
script.

## Licence

MIT. Copyright (c) 2026 Robbin Thijssen (Thijssen Software). See [LICENSE](LICENSE).
