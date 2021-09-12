from random import random
from time import perf_counter

COUNT = 500000
DATA = [(random() - 0.5) * 3 for _ in range(COUNT)]

e = 2.7182818284590452353602874713527

def sinh(x):
    return (1 - (e ** (-2 * x))) / (2 * (e ** -x))


def cosh(x):
    return (1 + (e ** (-2 * x))) / (2 * (e ** -x))


def tanh(x):
    tanh_x = sinh(x) / cosh(x)
    return tanh_x


def test(fn, name):
    start = perf_counter()
    result = fn(DATA)
    duration = perf_counter() - start
    print('{} took {:.3f} seconds\n\n'.format(name, duration))

    for d in result:
        assert -1 <= d <= 1, " incorrect values"


if __name__ == "__main__":
    print('Running benchmarks with COUNT = {}'.format(COUNT))
    test(lambda d: [tanh(x) for x in d], '[tanh(x) for x in d] (Python implementation)')

    # import ctypes
    # py_fast_trigonometry_1 = ctypes.cdll.LoadLibrary("./py_fast_trigonometry_1/py_fast_trigonometry_1.dll")

    import fast_trigonometry_1
    test(lambda d: [fast_trigonometry_1.fast_tanh(x) for x in d], '[fast_tanh(x) for x in d] (CPython C++ extension)')
