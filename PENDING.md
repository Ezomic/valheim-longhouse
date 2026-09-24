# Pending pack updates

One: 2.3.0. It waits on Thunderstore publishes that have not happened yet, which is why the
manifest is untouched: a pack that pins a version nobody can download is a pack that fails to
install, and `tcli` will build it happily.

2.2.0 went out on 2026-09-22 and its section is gone from here. What it carried is in its
changelog entry, and how 2.1.4, 2.1.5 and 2.4.0 were folded into it is in this file's git
history.

## 2.3.0 - adds Stund and repins Skaft and Rist, waits on Stund 1.0.0, Skaft 1.3.0 and Rist 1.7.0

**A minor**, same as 2.2.0 and for the same reason: the set grows again, sixteen mods to
seventeen.

**Rist 1.7.0** joined on 2026-09-24 as a repin. Sprinting could be free: Tireless, Long wind and
Long stride at rank 5 plus Eikthyr's power took the run-stamina discount past 100%, which
AllHailPidgey reported from live. `MinRunStaminaCost` now keeps running at a fifth of its cost
or more, and none of the three capstones touches running any more. Tireless shortens the pause
before stamina returns, Long wind adds regen, and Long stride jumps 15% higher with the
landing measured from a vanilla jump's height, because the first build of it hurt on every jump
at Jump 100. Steady footing went to 5% a rank and Ox-backed's capstone from stagger to half the
overloaded stamina drain, because `rist powers` measured Fader at -0.50 stagger and the two
stones took a hit down to a twentieth. The version is Robbin's. Prepared: 1.7.0 in all four files and the heading dated.
**Its zip has to be rebuilt**: Long stride changed after the last one was built, from a fifth
more jump force (44% more height, 4.38m at Jump 100) to 15% more height (about 3.5m), at
Robbin's word on 2026-09-24. The landing guard passed its retest on the old value and stays.

**Rist has nothing of its own to wait for.** Stund's blockers and Skaft's merge hold 2.3.0, and
Rist's fix is for a bug players on live can hit now. Alone it would be a patch, 2.2.1, by the
rule below. Robbin's call; until he makes it, it rides here.

Stund is the clock. `Day 43   17:45` on the HUD, in the game's own typeface, top centre by
default and in any corner you like. Valheim's own clock is the sun and it is a good one; it
stops working the moment you are underground, which is where the questions that turn on the
time actually get asked.

**It goes in a release of its own, behind 2.2.0**, and the reason is the Skaft one rather than
the member count. Each pack version repins one Skaft version, so 1.2.0 rides with 2.2.0 and
1.3.0 rides here: somebody sitting on 2.2.0 gets the bench half and the crosshair count as two
things they can tell apart, and 1.3.0 cannot go out before 1.2.0 anyway.

The older argument here was one new member at a time, so a player who dislikes one can say
which. **2.2.0 carries two now** - Kvedja and Merki - so that argument is spent, and it is worth
saying why rather than quietly deleting it: Robbin moved Merki forward once it had been run, and
two members in one release was the price. Stund stays behind because of Skaft, not the count.

Prepared as far as a mod with no remote can be: **1.0.0** in `manifest.json`, `Stund.csproj`
and `PluginVersion`, and a changelog heading written and marked pending.

The same three blockers Kvedja had, cleared the same way:

1. **No `icon.png`.** 256x256, or `tcli` refuses.
2. **No `thunderstore.toml`.** Generated - add `'stund'` to `own-profile\write-tomls.ps1` and
   run it. Never hand-written.
3. **No git remote.** `website_url` already points at `github.com/Ezomic/valheim-stund` and
   nothing is there. Public, because the repo goes public when the mod reaches 1.0.

Then, with the Skaft repin in the same sitting:

4. Add `@{ Name = 'Stund'; Path = 'stund'; Assembly = 'Stund'; Standalone = $true }` to
   `$repos` in `own-profile\package.ps1`.
5. `package.ps1 -Mod Stund`, then publish **Stund 1.0.0**.
6. Merge `damaged-in-reach` into `main` in `skaft`, then publish **Skaft 1.3.0**. In the same
   sitting, `package.ps1 -Mod Rist`, count the zip's entries against 1.6.0's, and publish
   **Rist 1.7.0**.
7. Add `'stund'` to `$members` in `longhouse\tools\build-manifest.ps1`.
8. `.\tools\build-manifest.ps1 -PackVersion 2.3.0`. Check it comes out at **seventeen mods plus
   BepInEx - eighteen dependency lines**, and that Skaft moved to 1.3.0 and Rist to 1.7.0.
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

**Stund 1.0.0** is a proposal, on the house rule rather than the diff: every mod in the suite
has gone up at 1.0.0 and gone public at the same moment. Say if it should ship lower and stay
private, and its pack entry comes out with it.

**Rist 1.7.0** is settled. Robbin picked it over 1.6.1 on 2026-09-24, since three carved stones
behave differently from 1.6.0.

## Which digit moves

A repin is a **patch** and a member joining or leaving is a **minor**. That is the whole rule,
and every repin since 2.0.15 has followed it; 2.1.0 is the one minor so far, which earned it by
**adding** Jafna.

**2.2.0 and 2.3.0 are the second and third minors**, and both earn it the same way 2.1.0 did,
by adding members rather than new versions of existing ones. 2.1.3 ships fourteen mods; 2.2.0
adds Kvedja and Merki for sixteen, and 2.3.0 adds Stund for seventeen.

**Two members in one minor is still one minor.** A version that has to move the middle digit
carries as many members as it likes, exactly as it carries repins for free - the rule gives the
smallest correct bump, not one bump per thing. 2.4.0 was never about the digit; it was about
Merki being untested, and it went when that did.

**A minor absorbs repins for free**, which is what folding the two patches in on 2026-09-22
rests on. The rule says what the *smallest* correct bump is, so a version that has to move the
middle digit anyway can carry any number of repins without moving anything further - four
repins inside 2.2.0 and 2.3.0 rather than two patches in front of them. The reverse is not
true: a patch can never carry a member.

## Before each publish

Run the Devkit scenario suite for every mod whose version moves. **Merki has four now** and
three have been run, all passing, on 2026-09-22: `merki-forces-you-onto-the-map` in
singleplayer, and the `paired-merki-watcher` / `paired-merki-dies` pair on the dev server with
`DeathMarkMinutes = 1`. The fourth is `paired-merki-scope-*`, which needs `Range = 100` on the
server and has not been run. **Rist has four**, all passing on 2026-09-24: `rist-armour-scales`,
`rist-steady-footing-capstone`, `rist-sprinting-is-never-free` and `rist-movement-capstones`.
All need **singleplayer**, because ranks live on the server and `rist rank` refuses on a
client. None needs devcommands: they reach `rist` through Devkit's `mod` step and Eikthyr's
power through `status`. None of them jumps, so Long stride's landing is checked by hand - Jump
100, Long stride at rank 5, jump on flat ground, no damage. Skaft's two both pass as of
22 September 2026 - `skaft-bench-repair` and `skaft-sweep-and-crosshair`. Kvedja's one passes
as of the same day - `kvedja-greets-you-in-chat` - with the caveat written into 2.2.0 above:
it needs the site reachable and `/admin/motd` non-empty, so a failure there is as likely to be
the network or an emptied message as it is the mod. Stund's passes at 8 steps as of the same
day - `stund-clock-agrees-with-the-world` - and run it in **singleplayer**, because its time
steps go through the server and a guest can be refused for reasons that are nothing to do with
the mod.
