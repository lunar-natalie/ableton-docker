#!/usr/bin/env bash
SRCDIR="$(realpath "$(dirname "$0")")"
[[ -n "$NOENV" ]] || { source "$SRCDIR/env.sh" || exit 1; }
curl -fsSL "https://raw.githubusercontent.com/mviereck/x11docker/master/x11docker" \
    | sudo bash -s -- --update \
    || exit 1
mkdir -p "$HOME/.local/share/applications" && \
    ln -sf "$SRCDIR/ableton-live.desktop" "$HOME/.local/share/applications/ableton-live.desktop"
docker build -t ableton-docker . && \
    "$SRCDIR/setup.sh" && \
    exec "$SRCDIR/run.sh" wine64 explorer.exe
