# Minecraft Horror Mode Datapack

This repository now contains a working Java Edition datapack for a horror watcher encounter.

## Features

- A distant watcher can appear at 24-48 blocks from players.
- The watcher disappears if:
  - a player keeps the crosshair on its upper-body target zone for 2 ticks;
  - a player approaches within 8 blocks.
- Teleport sound and smoke particles play on despawn.

## Install

1. Copy this project folder into a world `datapacks` directory.
2. Start the world and run `/reload`.
3. Optionally run `/function horror:start` once.

## Compatibility

- Minecraft Java Edition datapack format `26` (1.20.2-1.20.4 range).
