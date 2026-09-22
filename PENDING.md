# Pending pack updates

Two, in this order. Each waits on a Thunderstore publish that has not happened yet, which is
why the manifest is untouched: a pack that pins a version nobody can download is a pack that
fails to install, and `tcli` will build it happily.

It was four until 2026-09-22, when the two repin patches were folded into the two minors that
were queued behind them. The repins had nothing of their own to wait for that the minors were
not already waiting on, and a minor carries everything a patch would, so publishing them first
would have been two extra releases for no extra information. 2.1.4 and 2.1.5 no longer exist
and never will.

## 2.2.0 - adds Kvedja and repins four, waits on Kvedja 1.0.0, Skaft 1.2.0, Core 1.4.0, Vaettir 1.6.2 and Rist 1.6.0

**A minor, not a patch**: the set grows from fifteen members to sixteen. The four repins
ride along and do not change that - a minor already carries everything a patch would. See
"Which digit moves" below.

**Rist 1.6.0** joined the list on 2026-09-22 and is the fourth repin. Armour is a percentage
now: Thick-hided gives +3% a rank and another 5% at rank 5, and Steady footing's capstone is
+5% rather than +2, so no card grants flat armour any more. The flat number stopped being felt
by the Plains, which a player said on the ideas board and the game's own damage curve agrees
with. It is prepared: 1.6.0 in all four files and a dated changelog heading. The version is
Robbin's, not a proposal.

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

Then, with the three repins in the same sitting:

4. Add `@{ Name = 'Kvedja'; Path = 'kvedja'; Assembly = 'Kvedja'; Standalone = $true }` to
   `$repos` in `own-profile\package.ps1`. Leave this until now on purpose: a bare `package.ps1`
   with no `-Mod` builds everything on that list, and until the three above are done a Kvedja
   entry would only ever fail the run for the other mods.
5. `package.ps1 -Mod Kvedja`, then publish **Kvedja 1.0.0**.
6. Publish **Core 1.4.0**, **Vaettir 1.6.2**, **Skaft 1.2.0** and **Rist 1.6.0**. All four are
   prepared - versions bumped in every file that carries one, changelog headings written and
   marked pending - so each is a dated heading and an upload. Skaft's zip is already built and
   validated (`dist\Ezomic-Skaft-1.2.0.zip`, 6 entries, 0 blocking). Rist's heading is dated
   already, since its version was settled rather than proposed.
7. Add `'kvedja'` to `$members` in `longhouse\tools\build-manifest.ps1`. This is also
   deliberately late: the generator reads each member's own `manifest.json`, so a `kvedja` line
   added early would pull an unpublished 1.0.0 into whichever pack version regenerates next -
   which is exactly the failure the top of this document is about.
8. `.\tools\build-manifest.ps1 -PackVersion 2.2.0`, which rewrites every pin from the members'
   own manifests. Check the dependency count comes out at **sixteen plus BepInEx**, and that
   Skaft, Core, Vaettir and Rist moved to 1.2.0, 1.4.0, 1.6.2 and 1.6.0 beside Kvedja appearing.
9. Date the `## [2.2.0]` heading in CHANGELOG.md - the entry is already written.
10. `package.ps1 -Mod Longhouse`, then publish.

**Core before the pack, and ideally before the rest.** Every client and server on the pack has
to be on the same Core build for the version gate to let anyone in, and Core is the one member
the others depend on through Thunderstore. Publishing the pack before Core is up means a pack
pinning something nobody can download.

**Look at it once before publishing**, beyond the scenario. `kvedja-greets-you-in-chat` reads the
scrollback, which proves the line arrived and says nothing about whether anybody saw it - the chat
window opening itself is a reflected write to `Chat.m_hideTimer`, and if that binding is ever
wrong the message is in the buffer, invisible, with every log line reporting success. One login
answers it.

## 2.3.0 - adds Stund and repins Skaft, waits on Stund 1.0.0 and Skaft 1.3.0

**A minor**, same as 2.2.0 and for the same reason: the set grows again, sixteen members to
seventeen.

Stund is the clock. `Day 43   17:45` on the HUD, in the game's own typeface, top centre by
default and in any corner you like. Valheim's own clock is the sun and it is a good one; it
stops working the moment you are underground, which is where the questions that turn on the
time actually get asked.

**It goes in a release of its own, one behind Kvedja**, and two reasons agree on that. Two new
members in one pack version would be a bigger change to the set than anything since 2.0.0, and
the two have nothing to do with each other - one draws on your HUD and the other reads a web
page - so apart, a player who dislikes one of them can say which. And each pack version repins
one Skaft version, which is why 1.2.0 rides with Kvedja and 1.3.0 rides here: somebody sitting
on 2.2.0 gets the bench half and the crosshair count as two things they can tell apart.

Prepared as far as a mod with no remote can be: **1.0.0** in `manifest.json`, `Stund.csproj`
and `PluginVersion`, and a changelog heading written and marked pending.

The same three blockers Kvedja has, for the same reasons, so do them in the same sitting if
both are going up:

1. **No `icon.png`.** 256x256, or `tcli` refuses.
2. **No `thunderstore.toml`.** Generated - add `'stund'` to `own-profile\write-tomls.ps1` and
   run it. Never hand-written.
3. **No git remote.** `website_url` already points at `github.com/Ezomic/valheim-stund` and
   nothing is there. Public, because the repo goes public when the mod reaches 1.0.

Then, with the Skaft repin in the same sitting:

4. Add `@{ Name = 'Stund'; Path = 'stund'; Assembly = 'Stund'; Standalone = $true }` to
   `$repos` in `own-profile\package.ps1`.
5. `package.ps1 -Mod Stund`, then publish **Stund 1.0.0**.
6. Merge `damaged-in-reach` into `main` in `skaft`, then publish **Skaft 1.3.0**.
7. Add `'stund'` to `$members` in `longhouse\tools\build-manifest.ps1`.
8. `.\tools\build-manifest.ps1 -PackVersion 2.3.0`. Check the count comes out at **seventeen
   plus BepInEx**, and that Skaft moved to 1.3.0.
9. Date the `## [2.3.0]` heading in CHANGELOG.md - the entry is already written.
10. `package.ps1 -Mod Longhouse`, then publish.

Steps 4 and 7 are late here for the same reason they are late in 2.2.0: `build-manifest.ps1`
reads each member's own `manifest.json`, so an early `stund` line pulls an unpublished 1.0.0
into whichever pack version regenerates next, and a `package.ps1` entry before the icon exists
fails a bare run for every other mod.

**Nothing in this one needs eyeballing before it goes.** Unlike Kvedja, the thing that was only
checkable by eye is now checkable by scenario: `upright` was added to Devkit precisely because
the clock shipped unreadable while its scenario passed. What remains uncovered is whether the
label is visible at all, which no scenario can answer for any HUD element - `Hud.SetVisible`
parks its root off the screen rather than disabling it.

## Versions still to be confirmed

**Core 1.4.0** and **Vaettir 1.6.2** are proposals rather than decisions - a new public API is a
minor and a logging fix is a patch, which is where those two numbers come from. Changing either
is one line in four files plus the changelog heading, so say if you want different ones before
they go up.

**Kvedja 1.0.0** and **Stund 1.0.0** are proposals too, and the reasoning is the house rule
rather than the diff: every mod in the suite has gone up at 1.0.0 and gone public at the same
moment, so a first release at 0.x would be a new precedent rather than a smaller promise. Say
if you want either to ship at something lower and stay private, and its pack entry comes out
with it - a pack cannot pin a version that is not on Thunderstore.

**The order of 2.2.0 and 2.3.0 is a proposal as well.** Kvedja first is not a technical
constraint; they are independent and either could go first, or both could ride one version. It
is written this way because two new members in one release would be the biggest change to the
set since 2.0.0, and splitting them means a player who dislikes one can say which. Which Skaft
version rides with which is downstream of that and nothing else - 1.2.0 has to precede 1.3.0,
so it lands in whichever of the two goes first.

## Which digit moves

A repin is a **patch** and a member joining or leaving is a **minor**. That is the whole rule,
and every repin since 2.0.15 has followed it; 2.1.0 is the one minor so far, which earned it by
**adding** Jafna.

**2.2.0 and 2.3.0 are the second and third minors**, and both earn it the same way 2.1.0 did:
Kvedja is a sixteenth member and Stund a seventeenth, not new versions of existing ones.

**A minor absorbs repins for free**, which is what folding the two patches in on 2026-09-22
rests on. The rule says what the *smallest* correct bump is, so a version that has to move the
middle digit anyway can carry any number of repins without moving anything further - four
repins inside 2.2.0 and 2.3.0 rather than two patches in front of them. The reverse is not
true: a patch can never carry a member.

## Before each publish

Run the Devkit scenario suite for every mod whose version moves. **Rist has two now**, written
the same day for this release and not yet run: `rist-armour-scales` and
`rist-steady-footing-capstone`. Both need **singleplayer**, because ranks live on the server and
the `rist rank` command they drive refuses on a client. They read the armour ratio the game
itself is using rather than Rist's own total, which is why `rist show` prints those two numbers
apart. Skaft's two both pass as of
22 September 2026 - `skaft-bench-repair` and `skaft-sweep-and-crosshair`. Kvedja's one passes
as of the same day - `kvedja-greets-you-in-chat` - with the caveat written into 2.2.0 above:
it needs the site reachable and `/admin/motd` non-empty, so a failure there is as likely to be
the network or an emptied message as it is the mod. Stund's passes at 8 steps as of the same
day - `stund-clock-agrees-with-the-world` - and run it in **singleplayer**, because its time
steps go through the server and a guest can be refused for reasons that are nothing to do with
the mod.
