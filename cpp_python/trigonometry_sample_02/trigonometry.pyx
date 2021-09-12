# distutils: language = c++

cdef extern from "trigonometry_impl.cpp":
    double tanh_impl(double x)

def py_trigonometry_tanh(x):
    return tanh_impl(x)
