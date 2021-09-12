#!/usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup, Extension
import os

priject_path = os.path.dirname(os.path.realpath(__file__))
sfc_module = Extension('fast_trigonometry_1', sources = [priject_path + '\\fast_trigonometry_1.cpp'])

setup(
    name='fast_trigonometry_1',
    version='1.0',
    description='Python Package with fast_trigonometry_1 C++ extension',
    ext_modules=[sfc_module]
)
