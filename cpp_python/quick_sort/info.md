# Quick Sort Python Extention

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
# Compile
Invoke-Expression "cl /c /EHsc /I$(python -c 'import sys; print(sys.base_prefix)')/Include quick_sort.cpp"

# Build Executable
Invoke-Expression "cl /EHsc /I$(python -c 'import sys; print(sys.base_prefix)')/Include quick_sort.cpp"

# Build Library
Invoke-Expression "cl /LD /EHsc /I$(python -c 'import sys; print(sys.base_prefix)')/Include quick_sort.cpp /link /LIBPATH:$(python -c 'import sys; print(sys.base_prefix)')/libs"
lib quick_sort.obj # Build Static

# Generate Wrapper
# cython --cplus --embed -3 quick_sort_py.pyx -o quick_sort_py.cpp
cython --cplus -3 quick_sort_py.pyx -o quick_sort_py.cpp

# Build Cython Library
Invoke-Expression "cl /LD /EHsc /I$(python -c 'import sys; print(sys.base_prefix)')/Include quick_sort_py.cpp /link /LIBPATH:$(python -c 'import sys; print(sys.base_prefix)')/libs /out:quick_sort_py.pyd"

# Build Cython Library: Separate Linking
Invoke-Expression "cl /c /EHsc /I$(python -c 'import sys; print(sys.base_prefix)')/Include /Tpquick_sort_py.cpp /Foquick_sort_py.obj"
Invoke-Expression "link quick_sort_py.obj /OUT:quick_sort_py.pyd /IMPLIB:quick_sort_py.lib /DLL /LIBPATH:$(python -c 'import sys; print(sys.base_prefix)')/libs"
```

GCC

```sh
g++ -O3 -Wall -Werror -shared -std=c++11 -fPIC quick_sort.cpp -o quick_sort.so
cython --cplus -3 quick_sort.pyx -o quick_sort_wrapper.cpp
g++ -O3 -Wall -Werror -shared -std=c++11 -fPIC  -I`python -c 'import sys; print(sys.base_prefix)`/Include -I . quick_sort_wrapper.cpp -o py_quick_sort`python3-config --extension-suffix` -L. -lquick_sort -Wl,-rpath,.
```
