# AGENTS.md — Gridrun

Gridrun is an original low-poly 3D courier game written in AIL (AGPL-3.0, private). Not a port of any game: levels, names and art are original.

## Rules
- Pin: `.ail-version` holds the ail commit this repo is checked against (the ail v0.2.0 release commit, seed `seed-2026.11.21a`).
- Never build or test in a cloud container. Run `tools/check.sh` on a dev machine with ail checked out at the pinned commit at `../ail` (or `AIL_DIR`).
- Gameplay is a pure, deterministic `step(world, input, dt)`: no clocks, no random outside a seeded state.
- A human and an agent drive the game through the same `Input` values. Observation is lazy and costs nothing when detached.
- Cite the spec rule ID in a comment where behaviour depends on one.
- Never put a model name or identifier in a committed file.
- Layout: `src/` game (root module is `src/*.ail`), `tests/*_test.ail`, `levels/*.txt`, `tools/check.sh`.
- One branch per slice, a PR per branch, merge when check.sh is green.
