# Pending pack updates

Three, in this order. Each waits on a Thunderstore publish that has not happened yet, which is
why the manifest is untouched: a pack that pins a version nobody can download is a pack that
fails to install, and `tcli` will build it happily.

## 2.1.4 - waits on Skaft 1.2.0, Core 1.4.0 and Vaettir 1.6.2

Three repins in one patch. All three are prepared: versions bumped in every file that carries
one, changelog headings written and marked pending.

1. Publish **Skaft 1.2.0** from `skaft` on `main`. The zip is already built and validated
   (`dist\Ezomic-Skaft-1.2.0.zip`, 6 entries, 0 blocking).
2. Publish **Core 1.4.0** and **Vaettir 1.6.2**. Date their changelog headings first.
3. In `manifest.json`: `version_number` to `2.1.4`, and repin
   `Ezomic-Skaft-1.1.1` to `1.2.0`, `Ezomic-Longhouse_Core-1.3.0` to `1.4.0`, and
   `Ezomic-Vaettir-1.6.1` to `1.6.2`.
4. Date the `## [2.1.4]` heading in CHANGELOG.md - the entry is already written.
5. `package.ps1 -Mod Longhouse`, then publish.

**Core first, or at least not last.** Every client and server on the pack has to be on the same
Core build for the version gate to let anyone in, and Core is the one member that is a
dependency of the others on Thunderstore. Publishing the pack before Core is up means a pack
that pins something nobody can download.

## 2.1.5 - waits on Skaft 1.3.0

1. Merge `damaged-in-reach` into `main` in `skaft`, publish **Skaft 1.3.0**.
2. In `manifest.json`: `version_number` to `2.1.5`, and `Ezomic-Skaft-1.2.0` to
   `Ezomic-Skaft-1.3.0`.
3. Date the `## [2.1.5]` heading.
4. Package and publish.

## 2.2.0 - adds Kvedja, and waits on Kvedja 1.0.0

**A minor, not a patch**, and it is the only one of the three that is: the set grows from
fifteen members to sixteen. See "Which digit moves" below.

Kvedja is the chat message of the day. When you appear in the world it reads
`longhouse.thijssensoftware.nl/api/motd` and prints it into the chat window, under a name in
orange, once. It exists to put the ideas and bugs boards in front of somebody at the moment they
have just had an opinion worth casting, rather than in a README they read once while installing.

**Why it belongs in the pack rather than beside it.** Every other standalone is a thing a player
could want on its own. This one is only worth anything if the people it is talking to are there
to hear it, and the people it is talking to are Longhouse's players - so the pack is the delivery
route, not an afterthought. It is `Requirement.HostOnly`, registers no prefab, invents no ZDO key
and sends no RPC, so a pack user who deletes the DLL is not refused the server and loses nothing
but a greeting. On a dedicated server it is inert: all three of its patches are on `Chat` and
`Player.OnSpawned`, and neither exists in a headless process.

It is prepared as far as it can be without a remote: **1.0.0** in `manifest.json`, `Kvedja.csproj`
and `PluginVersion`, and a changelog heading written and marked pending.

Three things it does not have yet, and all three are blockers rather than polish:

1. **No `icon.png`.** Thunderstore needs a 256x256 one and `tcli` refuses without it. Every other
   member has one; this is the only piece of art the mod needs.
2. **No `thunderstore.toml`.** It is generated - add `'kvedja'` to the list in
   `own-profile\write-tomls.ps1` and run it. Do not hand-write it; the file says so at the top
   and a hand edit is overwritten by the next run.
3. **No git remote.** `manifest.json` already points `website_url` at
   `github.com/Ezomic/valheim-kvedja` and nothing is there. It goes up **public**, because the
   repo goes public when the mod reaches 1.0.

Then:

4. Add `@{ Name = 'Kvedja'; Path = 'kvedja'; Assembly = 'Kvedja'; Standalone = $true }` to
   `$repos` in `own-profile\package.ps1`. Leave this until now on purpose: a bare `package.ps1`
   with no `-Mod` builds everything on that list, and until the three above are done a Kvedja
   entry would only ever fail the run for the other mods.
5. `package.ps1 -Mod Kvedja`, then publish **Kvedja 1.0.0**.
6. Add `'kvedja'` to `$members` in `longhouse\tools\build-manifest.ps1`. This is also deliberately
   last: the generator reads each member's own `manifest.json`, so a `kvedja` line added early
   would pull an unpublished 1.0.0 into the 2.1.4 or 2.1.5 pins the next time anything regenerates
   the file - which is exactly the failure the top of this document is about.
7. `.\tools\build-manifest.ps1 -PackVersion 2.2.0`, which rewrites every pin from the members'
   own manifests. Check the dependency count comes out at **sixteen plus BepInEx**.
8. Date the `## [2.2.0]` heading in CHANGELOG.md - the entry is already written.
9. `package.ps1 -Mod Longhouse`, then publish.

**Publish after 2.1.5, not instead of it.** Nothing technically stops Kvedja riding along with a
repin, but 2.1.4 and 2.1.5 are already written as two releases so that somebody on the pack can
tell Skaft's two halves apart, and folding a new member into either would hide the one change in
this queue that actually changes what the set *is*.

**Look at it once before publishing**, beyond the scenario. `kvedja-greets-you-in-chat` reads the
scrollback, which proves the line arrived and says nothing about whether anybody saw it - the chat
window opening itself is a reflected write to `Chat.m_hideTimer`, and if that binding is ever
wrong the message is in the buffer, invisible, with every log line reporting success. One login
answers it.

## Versions still to be confirmed

**Core 1.4.0** and **Vaettir 1.6.2** are proposals rather than decisions - a new public API is a
minor and a logging fix is a patch, which is where those two numbers come from. Changing either
is one line in four files plus the changelog heading, so say if you want different ones before
they go up.

**Kvedja 1.0.0** is a proposal too, and the reasoning is the house rule rather than the diff:
every mod in the suite has gone up at 1.0.0 and gone public at the same moment, so a first
release at 0.x would be a new precedent rather than a smaller promise. Say if you want it to
ship at something lower and stay private, and the pack entry comes out with it - a pack cannot
pin a version that is not on Thunderstore.

## Which digit moves

A repin is a **patch**. 2.1.4 and 2.1.5 are repins of mods already in the set, so they are
2.1.4 and 2.1.5 rather than 2.2.0 and 2.3.0 - that is what every repin since 2.0.15 has done,
and 2.1.0 is the one minor bump, which earned it by **adding** Jafna. A minor bump means the
set grew or shrank; a patch means the set is the same mods at different versions.

**2.2.0 is the second minor**, and it earns it the same way 2.1.0 did: Kvedja is a sixteenth
member, not a new version of an existing one.

## Before each publish

Run the Devkit scenario suite for every mod whose version moves. Skaft's two both pass as of
22 September 2026 - `skaft-bench-repair` and `skaft-sweep-and-crosshair`. Kvedja's one passes
as of the same day - `kvedja-greets-you-in-chat` - with the caveat written into 2.2.0 above:
it needs the site reachable and `/admin/motd` non-empty, so a failure there is as likely to be
the network or an emptied message as it is the mod.
