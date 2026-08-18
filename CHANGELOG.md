# Changelog

Notable changes to the Longhouse pack. Format follows
[Keep a Changelog](https://keepachangelog.com), and the pack uses
[semantic versioning](https://semver.org).

The pack's version is its own and does not track any member's. It moves when the **set**
changes: a mod added, removed, or repinned. What changed inside a mod is in that mod's
changelog.

## [0.1.0] - 2026-08-16

First assembly of the pack. **Not published.**

### Members

Eight mods. Devkit is deliberately absent, and so is every mod that is published on its
own or has not been played.

| | |
| --- | --- |
| Core | the version gate the rest depend on |
| Stoker, Dovetail, Hoard | the quality-of-life half |
| Rist, Utangard | progression and pressure |
| Vaettir, Dyrr | the spirits, and the door policy |

Held out, each for its own reason: Thralls and Tether have never been played through;
Surge, Fiends and Delve are published on their own; Nidling is a creature, and a
published creature commits the suite to its prefab name forever; Saga writes per-player
state and is at 0.1.0. Stow and Furrow are not separate mods any more - both ship inside
Vaettir, so the pack gets them through that member.

### Generated pins

- Pins are built by `tools/build-manifest.ps1` from each member's own `manifest.json`,
  so a pin cannot drift from the version that mod actually publishes.
- A missing or malformed member is a loud failure rather than a shorter pack. A pack one
  mod short leaves every player failing Core's version gate for a reason none of them can
  see from inside the game.
- That failure did its job and was then ignored: the list named `wither` after the mod
  became Utangard, so the generator refused to run and the manifest was hand-edited for
  two days instead. The pins here are generated again.

### Known limits

- **Nothing in this pack has been published**, so none of the pins resolve on Thunderstore
  yet. The pack is assembled ahead of the uploads rather than after them.
- **There is no `icon.png`**, and Thunderstore requires a 256x256 one, so `package-all.ps1`
  skips the pack.
- Several members are at 0.x and have never been run in a session. The pack pins what
  exists, not what is finished.
