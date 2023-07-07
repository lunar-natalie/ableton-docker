#!/usr/bin/env bash
[[ -z "$NOENV" ]] || source "$DIRNAME/env.sh"
DIRNAME="$(dirname "$0")"
mkdir -p "$ABLETON_SHARE" || exit 1
exec x11docker \
    --alsa="$ALSA_CARD" \
    --env WINEARCH=win64 \
    --home \
    --share="$ABLETON_SHARE" \
    ableton-docker $@
