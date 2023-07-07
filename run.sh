#!/usr/bin/env bash
DIRNAME="$(dirname "$0")"
[[ -n "$NOENV" ]] || "$DIRNAME/env.sh"
mkdir -p "$ABLETON_SHARE" || exit 1
exec x11docker \
    --alsa="$ALSA_CARD" \
    --env WINEARCH=win64 \
    --home \
    --share="$ABLETON_SHARE" \
    ableton-docker $@
