# Add to NetXMS Linux LVM support

> Patch from 2016, so look at original repo for changes

## How to apply patch: 0001-Linux-agent-LVM-subagent-initial-implementation.patch

```bash
git apply --stat 0001-Linux-agent-LVM-subagent-initial-implementation.patch
git apply --check 0001-Linux-agent-LVM-subagent-initial-implementation.patch
git am < 0001-Linux-agent-LVM-subagent-initial-implementation.patch
```

## If you prefer naked sources

Just add files to NetXMS project.

## Features

* Basic LVM Support
* Functions: VG status(integrity), LV status(activate or not), VG size, LV size

## Dependencies

* Libs: liblvm and libdevmapper (via lvm-devel package)
* System headers: lvm2app.h (via lvm-devel package)
* *"-ldevmapper"* compiler parameter
* *"-llvm2app"* compiler parameter
