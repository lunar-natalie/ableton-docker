#!/usr/bin/env bash
DIRNAME="$(dirname "$0")"
[[ -n "$NOENV" ]] || { source "$DIRNAME/env.sh" || exit 1; }
exec env NOENV= "$DIRNAME/run.sh" wine64 "$ABLETON_DIR\\Ableton Live 11 Suite.exe"
