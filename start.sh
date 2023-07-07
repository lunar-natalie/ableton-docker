#!/usr/bin/env bash
DIRNAME="$(dirname "$0")"
[[ -n "$NOENV" ]] || "$DIRNAME/env.sh"
exec env NOENV= "$DIRNAME/run.sh" wine64 "$ABLETON_DIR\\Ableton Live 11 Suite.exe"
