#!/usr/bin/env bash
[[ -z "$NOENV" ]] ||source "$DIRNAME/env.sh"
DIRNAME="$(dirname "$0")"
exec env NOENV= "$DIRNAME/run.sh" wine64 "$ABLETON_DIR\\Ableton Live 11 Suite.exe"
