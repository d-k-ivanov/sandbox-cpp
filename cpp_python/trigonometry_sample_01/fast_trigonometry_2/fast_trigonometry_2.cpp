#include <pybind11/pybind11.h>

#ifdef _MSC_VER
#include <Windows.h>
#endif
#include <cmath>

const double e = 2.7182818284590452353602874713527;

double sinh_impl(double x)
{
    return (1 - pow(e, (-2 * x))) / (2 * pow(e, -x));
}

double cosh_impl(double x)
{
    return (1 + pow(e, (-2 * x))) / (2 * pow(e, -x));
}

double tanh_impl(double x)
{
    return sinh_impl(x) / cosh_impl(x);
}

namespace py = pybind11;

PYBIND11_MODULE(fast_trigonometry_2, m)
{
    m.def("fast_tanh", &tanh_impl, R"pbdoc(
        Compute a hyperbolic tangent of a single argument expressed in radians.
    )pbdoc");

#ifdef VERSION_INFO
    m.attr("__version__") = VERSION_INFO;
#else
    m.attr("__version__") = "dev";
#endif
}
