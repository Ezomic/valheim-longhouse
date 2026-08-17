# Changelog

Notable changes to the Longhouse pack. Format follows
[Keep a Changelog](https://keepachangelog.com), and the pack uses
[semantic versioning](https://semver.org).

The pack's version is its own and does not track any member's. It moves when the **set**
changes: a mod added, removed, or repinned. What changed inside a mod is in that mod's
changelog.

## [0.1.0] — 2026-08-16

First assembly of the pack. **Not published.**

### Members

Fifteen mods, every one meant for a player. Devkit is deliberately absent.

| | |
| --- | --- |
| Core | the version gate the rest depend on |
| Thralls, Stow, Stoker, Tether, Dovetail, Hoard, Furrow | the quality-of-life half |
| Rist, Wither, Surge | progression and pressure |
| Nidling, Fiends, Vaettir, Delve | things living in the world, and places to go down into |

### Generated pins

- Pins are built by `tools/build-manifest.ps1` from each member's own `manifest.json`,
  so a pin cannot drift from the version that mod actually publishes.
- A missing or malformed member is a loud failure rather than a shorter pack. A pack one
  mod short leaves every player failing Core's version gate for a reason none of them can
  see from inside the game.

### Known limits

- **Nothing in this pack has been published**, so none of the pins resolve on Thunderstore
  yet. The pack is assembled ahead of the uploads rather than after them.
- Several members are at 0.x and have never been run in a session. The pack pins what
  exists, not what is finished.
- The Core dependency string is unsettled: Core's own manifest declares its package name as
  `Core`, and Rist currently pins `Ezomic-EzomicCore`. One of the two has to move before
  anything resolves.
