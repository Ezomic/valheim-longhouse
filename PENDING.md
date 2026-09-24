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

Stund is the clock. `Day 43   17:45` on the HUD, in the game's own typeface, top centre by
default and in any corner you like. Valheim's own clock is the sun and it is a good one; it
stops working the moment you are underground, which is where the questions that turn on the
time actually get asked.

It comes after 2.2.0 because each pack version repins one Skaft version: 1.2.0 went with 2.2.0,
1.3.0 goes here, and 1.3.0 could not have gone first.

**Rist 1.7.0** joined on 2026-09-24 as a repin, and rides here by Robbin's choice over a 2.2.1
of its own. Sprinting could be free: Tireless, Long wind and Long stride at rank 5 plus
Eikthyr's power took the run-stamina discount past 100%, which AllHailPidgey reported from
live. `MinRunStaminaCost` now keeps running at a fifth of its cost or more, and none of the
three capstones touches running any more - Tireless shortens the pause before stamina returns,
Long wind adds regen, and Long stride jumps 15% higher with the landing measured from a vanilla
jump's height, because the first build of it hurt on every jump at Jump 100. Steady footing
went to 5% a rank and Ox-backed's capstone from stagger to half the overloaded stamina drain,
because `rist powers` measured Fader at -0.50 stagger and the two stones took a hit down to a
twentieth. All six Rist scenarios pass, 168 steps, and `rist-forsaken-powers` finds no forsaken
power that reaches zero on any stat with every stone carved.

### Prepared on 2026-09-24 - what is left is the uploads

**It goes out on Saturday 2026-09-26**, Robbin's date. Everything that is not a publish or the
live server is done.

- **Three zips built and validated**, each against the zip before it - the check that catches a
  stale staging folder:

  | Stund 1.0.0 | Skaft 1.3.0 | Rist 1.7.0 |
  | --- | --- | --- |
  | 6 entries, like Kvedja's | 6 entries, like 1.2.0's | 7 entries, like 1.6.0's |
  | DLL `1.0.0+28cb109` | DLL `1.3.0+6521da3` | DLL `1.7.0+8777533` |

- **Stund** has its icon - a clock face in Kvedja's flat style, picked from three - its
  generated toml, its `package.ps1` entry, and a public repo, github.com/Ezomic/valheim-stund,
  on `master` like every repo new-mod.ps1 makes.
- **Skaft**'s `damaged-in-reach` is merged into `main`, a fast-forward, and pushed. GitHub was
  nine commits behind until then: 1.2.0, on Thunderstore since 2026-09-22, had never been pushed.

What remains, in order:

1. Publish **Stund 1.0.0**, **Skaft 1.3.0** and **Rist 1.7.0** from the zips in their own
   `dist\` folders. Rebuild one only if its repo has moved past the commit its DLL names above.
2. Add `'stund'` to `$members` in `longhouse\tools\build-manifest.ps1`. Late on purpose: the
   generator reads each member's own `manifest.json`, so an early line pulls an unpublished
   1.0.0 into whichever pack version regenerates next.
3. `.\tools\build-manifest.ps1 -PackVersion 2.3.0`. Check it comes out at **seventeen mods plus
   BepInEx - eighteen dependency lines**, with Stund present, Skaft at 1.3.0 and Rist at 1.7.0.
4. Date the `## [2.3.0]` heading in CHANGELOG.md - the entry is already written.
5. `package.ps1 -Mod Longhouse`, then publish.
6. **Live, in the same sitting - not optional.** Rist is `Everyone`, and Skaft is `HostOnly`,
   which still checks a client that carries it against the server's copy. So live needs Rist
   1.7.0 with its `cards.txt` and Skaft 1.3.0, or every player on 2.3.0 is refused - and after a
   restart, every player still on 2.2.0 instead. Live ran Core 1.4.0, Rist 1.6.0 and Skaft 1.2.0
   when this was written.

   **Stund goes on live too, though it does nothing there.** Its only patches are on `Hud`,
   which a dedicated server never builds, and it has no `BepInProcess` to keep it off. It has
   to be there for Dyrr: `ModPolicy = Allow` refuses a client running a mod the server does
   not, live's `AllowedMods` is only Devkit and Sinka, and `dyrr-mods.txt` is empty. Kvedja got
   in the same way, by being on the server.

   Copy the DLLs, and Rist's `cards.txt`, out of the published zips rather than building fresh:
   the gate compares build ids, and the zips are what the players install. Rist's new
   `MinRunStaminaCost` writes itself into live's cfg at 0.2 on the first boot. Card ids did not
   change, so nobody's ranks move. Restart at Robbin's word, with the server empty.

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
server and has not been run. **Rist has six**, all passing on 2026-09-24: `rist-armour-scales`,
`rist-steady-footing-capstone`, `rist-sprinting-is-never-free`, `rist-movement-capstones`,
`rist-forsaken-powers` and `rist-stagger-and-load`.
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
