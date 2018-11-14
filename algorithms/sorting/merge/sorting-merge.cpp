//
// Created by Dmitry Ivanov on 9/3/17.
//

#include <iostream>
#include <ctime>
#include "sorting-merge.hpp"
#include "../../lib/generators.hpp"

using namespace std;

int main() {

	clock_t start = clock();

	int arraySize = 1000000;
	cout << "Sorting of " << arraySize << " integers" << endl;
	//int arr[arraySize] = {4,24,31,30,48,34,26,32,50,6};
	int arr[arraySize];

	intRandArray(arr,sizeof(arr)/sizeof(arr[0]));

/*
	cout << "Unsorted array: ";
	for (int i : arr) {
	 cout << i << " ";
 }
	cout << endl;
*/

	mergeSort(arr, 0, arraySize-1);

/*
	cout << "Sorted array: \t";
	for (int i : arr) {
	 cout << i << " ";
 }
	cout << endl;
*/

	clock_t stop = clock();
	cout << "Execution time: " << (stop - start) / double(CLOCKS_PER_SEC) << endl;

	return 0;
}

