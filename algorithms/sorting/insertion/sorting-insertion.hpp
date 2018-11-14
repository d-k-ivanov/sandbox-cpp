//
// Created by Dmitry Ivanov on 8/25/17.
//

#ifndef ALGORITHMS_SORTING_INSERTION_HPP
#define ALGORITHMS_SORTING_INSERTION_HPP

void insertionSort(int arr[],int size)
{
	for (int j = 1; j < size; j++)
	{
		int key = arr[j];
		int i = j - 1;
		while (i >= 0 && arr[i] > key)
		{
			arr[i+1] = arr[i];
			i = i - 1;
		};
		arr[i+1] = key;
	}
}

// TODO: reverseInsertionSort()

#endif //ALGORITHMS_SORTING_INSERTION_HPP
