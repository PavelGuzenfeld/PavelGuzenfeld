#!/bin/bash
# Batch-update GitHub repo descriptions, topics, and homepage URLs
# Usage: GH_TOKEN=<token> ./scripts/update-repos.sh
# Requires: gh CLI authenticated OR GH_TOKEN env var

set -euo pipefail

OWNER="PavelGuzenfeld"
API="https://api.github.com"

update_repo() {
    local repo="$1" desc="$2" homepage="${3:-}" topics="${4:-}"

    echo "Updating $repo..."

    # Update description and homepage
    local payload="{\"description\": \"$desc\""
    [[ -n "$homepage" ]] && payload+=", \"homepage\": \"$homepage\""
    payload+="}"

    gh api "repos/$OWNER/$repo" -X PATCH --input - <<< "$payload" > /dev/null 2>&1

    # Update topics
    if [[ -n "$topics" ]]; then
        gh api "repos/$OWNER/$repo/topics" -X PUT \
            --input - <<< "{\"names\": [$topics]}" > /dev/null 2>&1
    fi

    echo "  Done."
}

# ── Systems & Libraries ──
update_repo "strong-types" \
    "Type-safe C++ primitives with fuzz testing — prevent unit/coordinate mix-ups at compile time" \
    "" \
    '"cpp", "cpp23", "type-safety", "fuzz-testing", "header-only", "compile-time"'

update_repo "behavior-tree-lite" \
    "Header-only C++23 behavior tree with compile-time DSL and zero-overhead flattened execution" \
    "" \
    '"cpp", "cpp23", "behavior-tree", "robotics", "header-only", "compile-time", "dsl", "game-ai", "decision-tree"'

update_repo "l2-hybrid-protocol" \
    "Custom L2 network protocol — lower latency than raw UDP for real-time telemetry" \
    "" \
    '"cpp", "networking", "protocol", "low-latency", "real-time", "udp", "telemetry"'

update_repo "immutable-data-embedder" \
    "Compile-time C++23 config parser — embed data as constexpr with zero runtime overhead" \
    "" \
    '"cpp", "cpp23", "constexpr", "compile-time", "config", "header-only", "zero-overhead"'

update_repo "ucoro" \
    "Minimal C++ coroutine abstraction for async task orchestration" \
    "" \
    '"cpp", "cpp20", "coroutines", "async", "header-only"'

update_repo "gst-metadata" \
    "Composable GStreamer metadata library — type-safe, independent metadata types on GStreamer buffers via C++ CRTP" \
    "" \
    '"cpp", "gstreamer", "metadata", "crtp", "type-safety", "video-processing"'

update_repo "safe-shm" \
    "Thread-safe shared memory with compile-time allocation for C++" \
    "" \
    '"cpp", "shared-memory", "ipc", "thread-safety", "lock-free"'

update_repo "image-shm-dblbuf" \
    "Double-buffered shared memory optimized for zero-copy video frame transport" \
    "" \
    '"cpp", "shared-memory", "double-buffer", "video", "zero-copy", "real-time"'

update_repo "double-buffer-swapper" \
    "Lock-free double buffer with lazy copy for real-time producer-consumer patterns" \
    "" \
    '"cpp", "double-buffer", "lock-free", "real-time", "concurrency"'

update_repo "single-task-runner" \
    "Minimal single-threaded async callback runner for C++" \
    "" \
    '"cpp", "async", "callback", "task-runner", "single-threaded"'

update_repo "flat-type" \
    "C++ concept for contiguous-memory types — enables safe zero-copy serialization" \
    "" \
    '"cpp", "cpp23", "concepts", "serialization", "zero-copy"'

update_repo "exception-rt" \
    "Deterministic C++ exception handling with predictable memory allocation for real-time systems" \
    "" \
    '"cpp", "exceptions", "real-time", "deterministic", "embedded"'

update_repo "shm" \
    "POSIX shared memory library for C++ with RAII resource management" \
    "" \
    '"cpp", "shared-memory", "posix", "ipc", "raii"'

update_repo "v4l2" \
    "Video4Linux2 video capture adapter in modern C++ — camera input for vision pipelines" \
    "" \
    '"cpp", "v4l2", "video", "camera", "linux", "video-capture"'

# ── Navigation & Robotics ──
update_repo "fiber-nav-sim" \
    "VTOL navigation simulation framework — PX4 + Gazebo + ROS 2 SITL testing" \
    "" \
    '"cpp", "ros2", "px4", "gazebo", "vtol", "drone", "navigation", "simulation", "sitl"'

update_repo "linalg3d" \
    "3D linear algebra for flight path and attitude calculations in C++" \
    "" \
    '"cpp", "linear-algebra", "3d", "math", "robotics", "navigation"'

update_repo "image-to-body-math" \
    "Camera-to-body coordinate transforms — C++23 header-only + Python (nanobind, zero-copy NumPy)" \
    "" \
    '"cpp", "cpp23", "python", "nanobind", "coordinate-transform", "computer-vision", "robotics"'

update_repo "ros2-gst-meta" \
    "ROS 2 ↔ GStreamer metadata bridge for real-time vision pipelines" \
    "" \
    '"cpp", "ros2", "gstreamer", "metadata", "video-processing", "robotics"'

update_repo "geoslice" \
    "Geospatial data slicing and region extraction toolkit" \
    "" \
    '"python", "geospatial", "gis", "coordinate-transform"'

# ── DevOps & Tooling ──
update_repo "standard" \
    "Reusable GitHub Actions for C++ and Python quality gates — diff-aware linting, SAST, sanitizers, fuzzing" \
    "" \
    '"github-actions", "cpp", "python", "ci-cd", "code-quality", "sast", "clang-tidy", "cppcheck", "sanitizers", "fuzzing"'

update_repo "mcp-media-forge" \
    "MCP server for generating presentations, diagrams, charts, and videos from Markdown documentation" \
    "" \
    '"mcp", "model-context-protocol", "claude-code", "presentations", "diagrams", "markdown", "typescript"'

update_repo "gemini-mcp" \
    "MCP server exposing Google Gemini as tools for Claude Code — multi-model AI workflows" \
    "" \
    '"mcp", "model-context-protocol", "gemini", "google-ai", "claude-code", "ai-tools"'

update_repo "ros2-alpine" \
    "Minimal ROS 2 Jazzy on Alpine Linux — lightweight container for edge robotics deployment" \
    "" \
    '"docker", "ros2", "alpine", "robotics", "edge-computing", "container", "jazzy"'

update_repo "ai-cpp-course" \
    "Modern C++ course designed for AI/ML engineers transitioning to systems programming" \
    "" \
    '"cpp", "cpp23", "course", "tutorial", "ai", "education"'

update_repo "incubator-experimental" \
    "Experimental prototypes and proof-of-concepts — ideas that may graduate to standalone repos" \
    "" \
    '"cpp", "experimental", "prototyping"'

update_repo "qa-agency" \
    "Automated QA testing agency — AI-driven test generation and validation" \
    "" \
    '"python", "qa", "testing", "automation", "ai"'

echo ""
echo "All repos updated!"
