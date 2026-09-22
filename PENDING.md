# Pending pack updates

Two, in this order. Each waits on a Thunderstore publish that has not happened yet, which is
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

## Versions still to be confirmed

**Core 1.4.0** and **Vaettir 1.6.2** are proposals rather than decisions - a new public API is a
minor and a logging fix is a patch, which is where those two numbers come from. Changing either
is one line in four files plus the changelog heading, so say if you want different ones before
they go up.

## Which digit moves

A repin is a **patch**. Both of these are repins of a mod already in the set, so they are
2.1.4 and 2.1.5 rather than 2.2.0 and 2.3.0 - that is what every repin since 2.0.15 has done,
and 2.1.0 is the one minor bump, which earned it by **adding** Jafna. A minor bump means the
set grew or shrank; a patch means the set is the same mods at different versions.

## Before each publish

Run the Devkit scenario suite for every mod whose version moves. Skaft's two both pass as of
22 September 2026 - `skaft-bench-repair` and `skaft-sweep-and-crosshair`.
