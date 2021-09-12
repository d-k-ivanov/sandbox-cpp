#!/usr/bin/env python
# -*- coding: utf-8 -*-

import quick_sort_py

init_list = [86, 35, 65, 3, 90, 78, 63, 87, 49, 62, 94, 84, 56,
             32, 69, 41, 99, 47, 95, 28, 15, 7, 99, 47, 3, 62,
             10, 66, 35, 49, 83, 85, 76, 82, 79, 66, 44, 42, 16,
             17, 1, 62, 74, 9, 11, 42, 74, 50, 72, 25, 4, 81,
             10, 16, 98, 33, 64, 24, 6, 90, 16, 72, 93, 61, 86]

print("Sort List")
print(init_list)
sorted_list = quick_sort_py.pyqsort(init_list)
print(sorted_list)
