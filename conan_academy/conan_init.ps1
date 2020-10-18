if ( Test-Path 'venv\Scripts\activate.ps1' )
{
    & 'venv\Scripts\activate.ps1'
}
else
{
    $python = Get-Command python.exe | Select-Object -ExpandProperty Definition
    python.exe -m pip install --upgrade pip
    python.exe -m pip install --upgrade virtualenv
    python.exe -m virtualenv -p $python venv
    & 'venv\Scripts\activate.ps1'
    python.exe -m pip install --upgrade conan
}
