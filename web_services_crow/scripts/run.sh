#!/usr/bin/env bash
RUNPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"
VERSION=$(head -1 ${RUNPATH}/version)
docker run --rm -it --name="gcc-boost" -v ${PWD}:/project -p 18080:18080 dkivanov/gcc-boost:${VERSION} $@
