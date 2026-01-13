# Wolfenstein 3D WebXDC

Classic Wolfenstein 3D (1992) running as a WebXDC mini-app for [Vector](https://vectorapp.io) and other WebXDC-compatible messengers.

## Features

- Episode 1: Escape from Wolfenstein (10 levels)
- Complete audio: AdLib music + digitized sound effects
- Fullscreen responsive canvas
- Touch controls for mobile devices
- Debug console via `?debug` URL parameter

## Controls

**Keyboard:**
- Arrow keys: Move/Turn
- Ctrl: Fire
- Space: Open doors/Use
- Alt + Arrows: Strafe
- Escape: Menu

**Mobile:** On-screen D-pad and action buttons

## Building

```bash
./build.sh
```

Outputs `wolf3d.xdc` (~900KB) ready for deployment.

## Credits & Attribution

This project builds upon the work of many talented developers:

- **[id Software](https://github.com/id-Software/wolf3d)** - Original Wolfenstein 3D source code (1992, GPL)
- **[Wolf4SDL](https://github.com/11001011101001011/Wolf4SDL)** - SDL port of Wolfenstein 3D
- **[midzer](https://github.com/midzer/wolf4sdl)** - Emscripten/WebAssembly port with audio support

## License

Wolfenstein 3D source code is released under the GNU General Public License (GPL).
See the original [Wolf3D source](https://github.com/id-Software/wolf3d) for details.

The shareware game data is freely distributable but remains copyrighted by id Software.
