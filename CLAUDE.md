# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a 2D platformer game built with Godot 4.5.1, currently in early development. The game features a snake character with basic sprite animation.

## Key Commands

### Running the Game
```bash
godot --path . --headless  # Run headless
godot --path .             # Run with editor
godot project.godot        # Open in Godot editor
```

### Testing
Godot projects are typically tested by running the game in the editor. There is no separate test command unless a testing framework has been added.

## Project Structure

- **scenes/** - Godot scene files (.tscn)
  - `game.tscn` - Main game scene (uid://cjtv4f3drgi8j), set as the main scene in project.godot
  - `snake.tscn` - Snake character with animated sprite and collision shape

- **scripts/** - GDScript files (currently empty)
  - Game logic should be added here as .gd files
  - Scripts are typically attached to nodes in scene files

- **assets/** - Game assets organized by type
  - `sprites/` - PNG sprite sheets and tilesets (Snake_Sprites.png, knight.png, platforms.png, etc.)
  - `sounds/` - WAV sound effects (jump.wav, coin.wav, explosion.wav, etc.)
  - `music/` - MP3 music files (time_for_adventure.mp3)
  - All assets are CC0 licensed (see LICENSE & CREDITS.txt)

- **.godot/** - Generated Godot metadata (ignored by git)

## Architecture Notes

### Scene Hierarchy
- The main scene (game.tscn) instantiates the snake character as a child node
- Camera2D is configured at zoom level 4x, positioned at (24, 23)
- Snake is a CharacterBody2D with an AnimatedSprite2D and CircleShape2D collider

### Sprite System
- Snake uses a sprite sheet with 4 frames for idle animation at 5 FPS
- Rendering uses pixel-perfect filtering (textures/canvas_textures/default_texture_filter=0)
- Rendering pipeline: Forward Plus (Godot 4.5 default)

### File References
- Godot uses UIDs for scene/resource references instead of file paths
- Resource paths use the "res://" protocol to reference files relative to project root
- Import files (.import) are auto-generated for assets

## Development Workflow

When adding new features:
1. Create GDScript files in scripts/ directory
2. Attach scripts to scene nodes via the editor or by adding script resources to .tscn files
3. Test by running the game in the Godot editor or via command line
4. Sprites and assets should be placed in appropriate subdirectories under assets/
