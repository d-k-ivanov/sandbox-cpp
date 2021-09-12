#!/usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup, Extension
import pybind11

cpp_args = ['/std=c++11']

sfc_module = Extension(
    'fast_trigonometry_2',
    sources=['fast_trigonometry_2.cpp'],
    include_dirs=[pybind11.get_include()],
    language='c++',
    extra_compile_args=cpp_args,
    )

setup(
    name='fast_trigonometry_2',
    version='1.0',
    description='Python Package with fast_trigonometry_2 C++ extension (PyBind11)',
    ext_modules=[sfc_module],
)
