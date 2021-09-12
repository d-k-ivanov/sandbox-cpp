# distutils: language = c++

from libcpp.vector cimport vector

cdef extern from "rolling_sum_impl.cpp":
    vector[int] rolling_sum(vector[int] a)

def py_rolling_sum(a):
    return rolling_sum(a)
