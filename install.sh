#!/usr/bin/env bash
DIRNAME="$(dirname "$0")"
curl -fsSL https://raw.githubusercontent.com/mviereck/x11docker/master/x11docker |
    sudo bash -s -- --update \
    || exit 1
mkdir -p ~/.local/share/applications && \
    ln -s "$DIRNAME"/ableton-live.desktop ~/.local/share/applications/ableton-live.desktop`
docker build -t ableton-docker . && \
    ./setup.sh && \
    exec ./run.sh wine64 explorer.exe
