#!/usr/bin/env bash
SRCDIR="$(realpath "$(dirname "$0")")"
exec "$SRCDIR/run.sh" winetricks \
    atmlib \
    corefonts \
    d3dcompiler_43 \
    fontsmooth=rgb \
    gdiplus \
    msls31 \
    msxml3 \
    msxml4 \
    msxml6 \
    quicktime72 \
    vcrun2005
