#!/usr/bin/env bash
DIRNAME="$(dirname "$0")"
[[ -n "$NOENV" ]] || { source "$DIRNAME/env.sh" || exit 1; }
mkdir -p "$ABLETON_SHARE" || exit 1
exec x11docker \
    --alsa="$ALSA_CARD" \
    --env WINEARCH=win64 \
    --home \
    --share="$ABLETON_SHARE" \
    ableton-docker $@
