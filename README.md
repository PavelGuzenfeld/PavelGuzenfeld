# Pavel Guzenfeld

**UAV & Robotics Software Engineer** — C++23, ROS 2, PX4, GStreamer, Jetson

I design and implement flight-critical software for drones and robotics: navigation pipelines and computer vision. Available for consulting and contract work — remote or on-site.

[pavelguzenfeld.com](https://pavelguzenfeld.com) | [Consulting](https://pavelguzenfeld.com/consulting/) | [Blog](https://pavelguzenfeld.com/posts/) | [LinkedIn](https://linkedin.com/in/pavelguzenfeld)

---

### Systems & Libraries

| Project | What it does |
|---------|-------------|
| [strong-types](https://github.com/PavelGuzenfeld/strong-types) | Type-safe C++ primitives with SI units, dimensional analysis, and fuzz testing — prevent unit/coordinate mix-ups at compile time |
| [behavior-tree-lite](https://github.com/PavelGuzenfeld/behavior-tree-lite) | Header-only C++23 behavior tree with compile-time DSL and zero-overhead flattened execution |
| [l2-hybrid-protocol](https://github.com/PavelGuzenfeld/l2-hybrid-protocol) | Custom L2 network protocol — lower latency than raw UDP for real-time telemetry |
| [gst-nvmm-cpp](https://github.com/PavelGuzenfeld/gst-nvmm-cpp) | GStreamer plugins for zero-copy NVMM video on NVIDIA Jetson (Xavier, Orin) |
| [immutable-data-embedder](https://github.com/PavelGuzenfeld/immutable-data-embedder) | Compile-time C++23 config parser — embed data as `constexpr` with zero runtime overhead |
| [ucoro](https://github.com/PavelGuzenfeld/ucoro) | Minimal C++ coroutine abstraction for async task orchestration |
| [gst-metadata](https://github.com/PavelGuzenfeld/gst-metadata) | Composable GStreamer metadata — type-safe, independent metadata types via CRTP |
| [safe-shm](https://github.com/PavelGuzenfeld/safe-shm) | Thread-safe shared memory with compile-time allocation |
| [image-shm-dblbuf](https://github.com/PavelGuzenfeld/image-shm-dblbuf) | Double-buffered shared memory optimized for video frames |
| [v4l2](https://github.com/PavelGuzenfeld/v4l2) | Video for Linux 2 based video source adapter in C++ |

### Navigation & Robotics

| Project | What it does |
|---------|-------------|
| [fiber-nav-sim](https://github.com/PavelGuzenfeld/fiber-nav-sim) | GPS-denied VTOL navigation — fiber optic + monocular vision fusion, PX4 + Gazebo + ROS 2 |
| [linalg3d](https://github.com/PavelGuzenfeld/linalg3d) | 3D linear algebra for flight path and attitude calculations |
| [image-to-body-math](https://github.com/PavelGuzenfeld/image-to-body-math) | Camera-to-body coordinate transforms — C++23 header-only + Python (nanobind, zero-copy NumPy) |
| [ros2-gst-meta](https://github.com/PavelGuzenfeld/ros2-gst-meta) | ROS 2 ↔ GStreamer metadata bridge for vision pipelines |
| [geoslice](https://github.com/PavelGuzenfeld/geoslice) | Geospatial terrain slicing utilities |

### DevOps & Tooling

| Project | What it does |
|---------|-------------|
| [standard](https://github.com/PavelGuzenfeld/standard) | Reusable GitHub Actions for C++/Python — diff-aware linting, SAST, sanitizers, fuzzing |
| [mcp-media-forge](https://github.com/PavelGuzenfeld/mcp-media-forge) | MCP server for generating presentations, diagrams, and charts from Markdown |
| [gemini-mcp](https://github.com/PavelGuzenfeld/gemini-mcp) | MCP server exposing Google Gemini as tools for Claude Code |
| [notebooklm-mcp](https://github.com/PavelGuzenfeld/notebooklm-mcp) | MCP server for Google NotebookLM — notebooks, sources, chat, artifacts, research |
| [ros2-alpine](https://github.com/PavelGuzenfeld/ros2-alpine) | Minimal ROS 2 on Alpine Linux — lightweight container for edge deployment |
| [ai-cpp-course](https://github.com/PavelGuzenfeld/ai-cpp-course) | C++ course for AI developers — nanobind, CUDA, profiling-driven optimization |

---

### Upstream Contributions

- **Eigen** — bug fixes, new operators, structured bindings, Gram-Schmidt QR
- **dora-rs** — C++ API parity, zero-copy output, dynamic node init
- **XGBoost** — `python -OO` crash fixes, type safety, dead code removal
- **PX4-Autopilot** — DDS reconnection, MAVLink signing, mission resume bugs
- **GStreamer** — NVMM Jetson plugins, shmsink bugs, CUDA memory checks
- **Fast-DDS** — data races, infinite loop, null-deref, missing includes
- **MAVSDK** — telemetry timestamps, geofence download, HOME_POSITION
- **ROS 2** — O(N²) → O(N) CallbackGroup (71x speedup), deadlock fix
- **OpenCV**, **concurrentqueue**, **px4-ros2-interface-lib** — bug fixes and utilities

[Full contribution list with links →](https://pavelguzenfeld.com/projects/)

---

### Tech Stack

![C++](https://img.shields.io/badge/C++-23-00599C?style=flat&logo=cplusplus&logoColor=white)
![CMake](https://img.shields.io/badge/CMake-064F8C?style=flat&logo=cmake&logoColor=white)
![ROS2](https://img.shields.io/badge/ROS_2-22314E?style=flat&logo=ros&logoColor=white)
![PX4](https://img.shields.io/badge/PX4-48B9C7?style=flat&logoColor=white)
![Gazebo](https://img.shields.io/badge/Gazebo-F58113?style=flat&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat&logo=docker&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-2088FF?style=flat&logo=githubactions&logoColor=white)
![GStreamer](https://img.shields.io/badge/GStreamer-E4002B?style=flat&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=flat&logo=linux&logoColor=black)

---

<details>
<summary><b>GitHub Stats</b></summary>
<br>

![GitHub Stats](https://github-readme-stats.vercel.app/api?username=PavelGuzenfeld&show_icons=true&theme=dark&hide_border=true&count_private=true)

![Top Languages](https://github-readme-stats.vercel.app/api/top-langs/?username=PavelGuzenfeld&layout=compact&theme=dark&hide_border=true)

![GitHub Streak](https://github-readme-streak-stats.herokuapp.com/?user=PavelGuzenfeld&theme=dark&hide_border=true)

</details>

---

### Recent Activity

<!--START_SECTION:activity-->
1. 🎉 Merged PR [#445](https://github.com/cameron314/concurrentqueue/pull/445) in [cameron314/concurrentqueue](https://github.com/cameron314/concurrentqueue)
2. ❌ Closed PR [#401](https://github.com/mavlink/MAVSDK-Proto/pull/401) in [mavlink/MAVSDK-Proto](https://github.com/mavlink/MAVSDK-Proto)
3. 🗣 Commented on [#401](https://github.com/mavlink/MAVSDK-Proto/pull/401#issuecomment-4141589479) in [mavlink/MAVSDK-Proto](https://github.com/mavlink/MAVSDK-Proto)
4. 💪 Opened PR [#401](https://github.com/mavlink/MAVSDK-Proto/pull/401) in [mavlink/MAVSDK-Proto](https://github.com/mavlink/MAVSDK-Proto)
5. 🎉 Merged PR [#1](https://github.com/PavelGuzenfeld/pavelguzenfeld.github.io/pull/1) in [PavelGuzenfeld/pavelguzenfeld.github.io](https://github.com/PavelGuzenfeld/pavelguzenfeld.github.io)
<!--END_SECTION:activity-->
