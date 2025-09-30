# Gem Catcher (Godot)

A small, polished arcade-style game built with the Godot Engine. Move the paddle to catch falling gems, keep your streak going, and enjoy snappy gameplay with sound effects and background music.



## Overview

- Fast, responsive paddle controls
- Simple, addictive gem-catching loop
- Lightweight assets and GDScript-only code
- Clean scene separation: `game`, `paddle`, and `gem`

## Preview

<p align="center">
  <img src="https://github.com/user-attachments/assets/24c02b76-036c-4d4e-982e-56b35821e41d" alt="Gem Catcher gameplay preview GIF" width="720">
</p>

## Getting Started

### Prerequisites
- Install Godot Engine 4.x (https://godotengine.org/)

### Run the Game
1. Clone or download this repository.
2. Open Godot, click "Import" and select the project folder containing `project.godot`.
3. Run the project with `F5`.
   - If the main scene isn’t set, open `scenes/game/game.tscn` and run it directly.

## Controls

- Move: Arrow Keys or `A` / `D`
- Pause/Unpause: `Esc` (depending on your OS window handling)

Note: If you prefer different bindings, you can remap input actions in `Project > Project Settings > Input Map`.

## Gameplay

- Catch falling gems with the paddle.
- Maintain streaks by avoiding misses.
- Background music and effects provide feedback for actions.

## Project Structure

```
.
├── project.godot          # Godot project manifest
├── assets/                # Art and audio (background, paddle, gem, SFX, BGM)
└── scenes/
    ├── game/              # Main game scene and logic
    │   ├── game.tscn
    │   └── game.gd
    ├── paddle/            # Paddle scene and controller
    │   ├── paddle.tscn
    │   └── paddle.gd
    └── gem/               # Gem scene and behavior
        ├── gem.tscn
        └── gem.gd
```

## Tech Notes

- Engine: Godot 4.x
- Language: GDScript
- Main entry: `scenes/game/game.tscn`
- Audio: `assets/bgm_action_5.mp3`, `assets/explode.wav`, `assets/spell1_0.wav`
- Sprites: `assets/GameBg.png`, `assets/paddleBlu.png`, `assets/element_red_diamond.png`

### Tuning & Configuration
- Spawn rate, gem speed, and difficulty are typically controlled in `scenes/game/game.gd`.
- Paddle movement sensitivity is handled in `scenes/paddle/paddle.gd`.
- You can adjust sound volumes in `AudioStreamPlayer` nodes via the Godot editor.

## Development

- Scripts live alongside their scenes for clarity and modularity.
- Use Godot’s debugger and the Remote tab to inspect node trees at runtime.
- Keep scenes focused: game orchestrates, paddle handles input/movement, gem handles its own lifecycle.

## Roadmap Ideas

- Add score UI and streak multipliers
- Difficulty scaling and power-ups
- Touch/mouse controls for mobile and web
- Particle effects and polish

## Contributing

- Fork the repo and create a feature branch.
- Keep changes small and focused.
- Submit a PR with a clear description and demo (gif/video if possible).

## Credits

- Audio and art are included in `assets/`. If you replace or add new assets, ensure you have the right to use them and document sources here.

## License

No explicit license is currently provided. Contact the maintainer if you want to reuse or distribute this project. You may add a license later by including a `LICENSE` file and updating this section.