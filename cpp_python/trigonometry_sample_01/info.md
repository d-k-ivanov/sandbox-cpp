# Writing Python Module with C++

> You need to init the Visual Studio developmnet tools to run these commands.

## Init

Windows

```ps1
($python = Get-Command python.exe | Select-Object -ExpandProperty Definition); python.exe -m virtualenv -p $python venv
python -m pip install -r requirements.txt
```

Linux:

```sh
python -m virtualenv -p $(which python) venv
python -m pip install -r requirements.txt
```

## Compile

Visual Studio

```ps1
# fast_trigonometry_1
cd fast_trigonometry_2
Invoke-Expression "cl /std:c11 /c  /EHsc /I$(python -c 'import sys; print(sys.base_prefix)')/Include fast_trigonometry_1.cpp"
Invoke-Expression "cl /std:c11 /LD /EHsc /I$(python -c 'import sys; print(sys.base_prefix)')/Include fast_trigonometry_1.cpp /link /LIBPATH:$(python -c 'import sys; print(sys.base_prefix)')/libs"

# fast_trigonometry_2
cd fast_trigonometry_2
Invoke-Expression "cl /std:c11 /c  /EHsc $((python -m pybind11 --includes).replace('-I','/I')) fast_trigonometry_2.cpp"
Invoke-Expression "cl /std:c11 /LD /EHsc $((python -m pybind11 --includes).replace('-I','/I')) fast_trigonometry_2.cpp /link /LIBPATH:$(python -c 'import sys; print(sys.base_prefix)')/libs"
```

GCC

```sh
# fast_trigonometry_1
cd fast_trigonometry_2
gcc -std=c++11 -I$(python -c "from sysconfig import get_paths as gp; print(gp()['include'])") trigonometry_1.cpp

# fast_trigonometry_2
cd fast_trigonometry_2
gcc -std=c++11 $(python -m pybind11 --includes) trigonometry_1.cpp fast_trigonometry_2.cpp

```

## Setuputils

```sh
# MSVC
python setup.py build  --compiler=msvc
python setup.py install

# GCC
python setup.py build --compiler=mingw32
python setup.py install
```

## PyBind11

```sh
python -m pybind11 --includes
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

## Results

Windows:

```txt

```

Linux:

```txt
python main.py
Running benchmarks with COUNT = 1500000
[tanh(x) for x in d]            (Python implementation)  took 1.046 seconds
[fast_tanh(x) for x in d]       (CPython C++ extension)  took 0.308 seconds
[fast_tanh(x) for x in d]       (PyBind11 C++ extension) took 0.461 seconds
```
