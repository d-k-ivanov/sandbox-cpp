#!/usr/bin/env pwsh
${RUNPATH} = (get-item $PSScriptRoot ).parent.FullName
${VERSION} = $(Get-Content ${RUNPATH}\version -First 1)
docker run --rm -it --name="gcc-boost" -v ${PWD}:/project -p 18080:18080 dkivanov/gcc-boost:${VERSION} @args
