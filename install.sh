#!/usr/bin/env bash
DIRNAME="$(dirname "$0")"
curl -fsSL "https://raw.githubusercontent.com/mviereck/x11docker/master/x11docker" \
    | sudo bash -s -- --update \
    || exit 1
mkdir -p "$HOME/.local/share/applications" && \
    ln -sf "$DIRNAME/ableton-live.desktop" "$HOME/.local/share/applications/ableton-live.desktop"
docker build -t ableton-docker . && \
    ./setup.sh && \
    exec ./run.sh wine64 explorer.exe
