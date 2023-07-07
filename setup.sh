#!/usr/bin/env bash
exec ./run.sh winetricks \
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
