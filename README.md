# Gridrun

An original low-poly 3D courier game, written in AIL and playable by a human or an AI agent. Pick up the parcels, reach the drop-off before the timer ends, and avoid the patrol drones.

Status: skeleton (S0). `src/main.ail` prints `gridrun`.

## Controls
Planned: left/right turn, up/down accelerate and brake, Esc quit.

## AI control
Planned. An agent will send the same `Input` values a human does and will read the screen (`ail attach screen`) or structured observations (`ail attach observe`). With nothing attached the game pays no extra cost per frame.

## Development
Pinned to the ail commit in `.ail-version`, the ail v0.2.0 release commit. On a dev machine with ail at `../ail`:

    tools/check.sh

## Licence
AGPL-3.0, see `LICENSE`.
