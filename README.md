# WASM 3D Engine Benchmarks
Wanted to test out the performance in WebGL for Unity, Godot, and Evergine. Bevy and Fyrox are two other engines that I could/should test as well. Outside of those five, I don't know of any other engines that would qualify yet since Unreal removed WebGL support and most other .NET game engines (Stride, MonoGame) are waiting for changes in .NET 9 before they add support. I may expand the scope of this project even further to include Babylon.js as a baseline for performance as I would assume that it'd be the fastest.

# System
I'm running this on a Lenovo Legion 7 with a Ryzen 6900HX and an RX 6850m XT with 96GB RAM on my laptop's Balanced mode.

# Motive
I'm working on a project for work and, while it is not very GPU-intensive, it is very CPU-intensive due to a lot of interop happening between the engine and the browser and there being potentially a lot of objects on the scene.
While Unity works well enough, the biggest downside is the fact that the iteration times are terrible. On my machine, it takes 5 minutes to build an empty Unity WebGL project. That is able to easily double at least but regardless, as a result of this, testing can really only be done in the editor. But since a lot of JavaScript interop is happening and the editor obviously doesn't support JavaScript, a lot of straight-up guessing needs to be done.

# Unity
This is going to be ran in Unity 2022.3.32f1 which is the latest LTS release.

# Godot
In order for the best browser support, I'm running this on the latest release at the time-of-writing even though it's unstable: Godot 4.3 rc1. Just like with other .NET game engines, this is also waiting for changes in .NET 9 before support for .NET is re-added for WebGL builds. So, this is going to be programmed in GDScript.

# Evergine
This is going to be ran on the latest release at the time-of-writing, 2024.6.28.781.

Further notes on each will be placed in .md files in their respective folders.