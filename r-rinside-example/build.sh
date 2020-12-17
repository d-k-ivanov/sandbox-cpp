#/usr/bin/env bash

# Runtime libs
export LD_LIBRARY_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/library/RInside/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/library/Rcpp/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/lib:$LD_LIBRARY_PATH"

# Buildtime libs
export LIBRARY_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/library/RInside/lib:$LD_LIBRARY_PATH"
export LIBRARY_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/lib:$LD_LIBRARY_PATH"

# Include dirs
export CPLUS_INCLUDE_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/library/RInside/include:$CPLUS_INCLUDE_PATH"
export CPLUS_INCLUDE_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/library/Rcpp/include:$CPLUS_INCLUDE_PATH"
export CPLUS_INCLUDE_PATH="/opt/microsoft/ropen/3.5.3/lib64/R/include:$CPLUS_INCLUDE_PATH"

# R dependencies
Rscript -e 'install.packages("Rcpp", "RInside")'

g++ -lR -lRInside -o main.bin main.cpp
