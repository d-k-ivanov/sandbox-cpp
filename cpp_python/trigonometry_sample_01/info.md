# Writing Python Module with C++

> You need to init the Visual Studio developmnet tools to run these commands.

## Compile

Visual Studio

```ps1
# fast_trigonometry_1
Invoke-Expression "cl /std:c11 /c /EHsc                         `
    /I$(python -c 'import sys; print(sys.base_prefix)')/Include `
    fast_trigonometry_1/fast_trigonometry_1.cpp"

Invoke-Expression "cl /std:c11 /LD /EHsc                        `
    /I$(python -c 'import sys; print(sys.base_prefix)')/Include `
    fast_trigonometry_1/fast_trigonometry_1.cpp                 `
    /link /LIBPATH:$(python -c 'import sys; print(sys.base_prefix)')/libs"

# fast_trigonometry_2
Invoke-Expression "cl /std:c11 /c /EHsc                     `
    $((python -m pybind11 --includes).replace('-I','/I'))   `
    fast_trigonometry_2/fast_trigonometry_2.cpp"

Invoke-Expression "cl /std:c11 /LD /EHsc                    `
    $((python -m pybind11 --includes).replace('-I','/I'))   `
    fast_trigonometry_2/fast_trigonometry_2.cpp             `
    /link /LIBPATH:$(python -c 'import sys; print(sys.base_prefix)')/libs"
```

GCC

```sh
gcc -std=c++11 -c module.cpp
gcc -std=c++11 $(python -m pybind11 --includes) module.cpp
```

## PyBind11

```sh
python -m pybind11 --includes
```

## Clean

```sh
rm *.o; rm *.obj
```

## Misc

```py
from sysconfig import get_paths
from pprint import pprint
info = get_paths()
pprint(info)
```

Includes

```sh
python -c "from sysconfig import get_paths as gp; print(gp()['include'])"
python -c "from sysconfig import get_paths as gp; print(gp()['stdlib'])"
```
