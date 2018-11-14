//
// Created by Dmitry Ivanov on 8/25/17.
// ALGORITHMS_SORTING_INSERTION
//

#include <iostream>
#include <ctime>
#include "sorting-insertion.hpp"
#include "../../lib/generators.hpp"

using namespace std;

int main(int argc, char *argv[] ) {

	clock_t start = clock();

	int arraySize = 100000;
	cout << "Sorting of " << arraySize << " integers" << endl;
	int arr[arraySize];

	intRandArray(arr,sizeof(arr)/sizeof(arr[0]));

/*
	cout << "Unsorted array: ";
	for (unsigned int i = 0; i < sizeof(arr)/sizeof(arr[0]); i++) {
	 cout << arr[i] << " ";
 }
	cout << endl << endl;
*/

	insertionSort(arr, sizeof(arr)/sizeof(arr[0]));

/*
	cout << "Sorted array: \t";
	for (unsigned int i = 0; i < sizeof(arr)/sizeof(arr[0]); i++) {
	 cout << arr[i] << " ";
 }
	cout << endl;
	*/

	clock_t stop = clock();
	cout << "Execution time: " << (stop - start) / double(CLOCKS_PER_SEC) << " seconds" << endl;

	return 0;
}
