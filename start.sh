#!/usr/bin/env bash
SRCDIR="$(realpath "$(dirname "$0")")"
[[ -n "$NOENV" ]] || { source "$SRCDIR/env.sh" || exit 1; }
exec env NOENV= "$SRCDIR/run.sh" wine64 "$ABLETON_DIR\\Ableton Live 11 Suite.exe"
