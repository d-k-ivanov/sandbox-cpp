# distutils: language = c++

from libcpp.vector cimport vector

cdef extern from "quick_sort.cpp":
    vector[int] qsort(vector[int] a)

def pyqsort(a):
    return qsort(a)
