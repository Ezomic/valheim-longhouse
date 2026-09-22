# Pending pack updates

Two, in this order. Each waits on a Thunderstore publish that has not happened yet, which is
why the manifest is untouched: a pack that pins a version nobody can download is a pack that
fails to install, and `tcli` will build it happily.

## 2.1.4 - waits on Skaft 1.2.0

1. Publish **Skaft 1.2.0** from `skaft` on `main`. The zip is already built and validated
   (`dist\Ezomic-Skaft-1.2.0.zip`, 6 entries, 0 blocking).
2. In `manifest.json`: `version_number` to `2.1.4`, and `Ezomic-Skaft-1.1.1` to
   `Ezomic-Skaft-1.2.0`.
3. Date the `## [2.1.4]` heading in CHANGELOG.md - the entry is already written.
4. `package.ps1 -Mod Longhouse`, then publish.

## 2.1.5 - waits on Skaft 1.3.0

1. Merge `damaged-in-reach` into `main` in `skaft`, publish **Skaft 1.3.0**.
2. In `manifest.json`: `version_number` to `2.1.5`, and `Ezomic-Skaft-1.2.0` to
   `Ezomic-Skaft-1.3.0`.
3. Date the `## [2.1.5]` heading.
4. Package and publish.

## Not in either of these

**Vaettir** has an unreleased fix (eleven false warnings a launch) and **Core** has an
unreleased addition (`Suite.Owns`, which is what lets Devkit say what a mod registered).
Neither is published, so the pack still pins Vaettir 1.6.1 and Core 1.3.0 and is not drifting -
see the standing note that a pack pinning behind a published mod is deliberate. If either of
those is published first, it wants its own patch version rather than being folded into one of
these: one repin per version is what makes a changelog entry worth reading.

## Which digit moves

A repin is a **patch**. Both of these are repins of a mod already in the set, so they are
2.1.4 and 2.1.5 rather than 2.2.0 and 2.3.0 - that is what every repin since 2.0.15 has done,
and 2.1.0 is the one minor bump, which earned it by **adding** Jafna. A minor bump means the
set grew or shrank; a patch means the set is the same mods at different versions.

## Before each publish

Run the Devkit scenario suite for every mod whose version moves. Skaft's two both pass as of
22 September 2026 - `skaft-bench-repair` and `skaft-sweep-and-crosshair`.
