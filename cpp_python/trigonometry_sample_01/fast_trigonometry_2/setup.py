#!/usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup, Extension
import os
import pybind11

priject_path = os.path.dirname(os.path.realpath(__file__))
sfc_module = Extension(
    'fast_trigonometry_2',
    sources=[priject_path + '\\fast_trigonometry_2.cpp'],
    include_dirs=[pybind11.get_include()],
    language='c++',
)

setup(
    name='fast_trigonometry_2',
    version='1.0',
    description='Python Package with fast_trigonometry_2 C++ extension (PyBind11)',
    ext_modules=[sfc_module],
)
