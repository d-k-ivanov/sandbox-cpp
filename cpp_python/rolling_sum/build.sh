#!/usr/bin/env bash

python setup.py build_ext --inplace
# python setup.py install

# Testing
python main.py
