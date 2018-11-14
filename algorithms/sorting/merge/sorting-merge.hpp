//
// Created by Dmitry Ivanov on 9/3/17.
//

#ifndef ALGORITHMS_MERGE_HPP
#define ALGORITHMS_MERGE_HPP

#include <cmath>
#include <iostream>
#include <climits>

using namespace std;

void merge(int* A, int p, int q, int r){

	int n1 = q - p + 1;
	int n2 = r - q;

	int L[n1];
	int R[n2];

	for(int i = 0; i < n1; i++){
		L[i] = A[p + i];
	}

	for(int j = 0; j < n2; j++){
		R[j] = A[q + j + 1];
	}

	int i = 0;
	int j = 0;
	for(int k = p; k <= r; k++){
		if (L[i] < R[j] && i<=n1 && j<=n2) {
			A[k] = L[i];
			i++;
		} else if (L[i] >= R[j] && i<=n1 && j<=n2) {
			A[k] = R[j];
			j++;
		}
		if (j>n2){
			A[k] = L[i];
			i++;
		}
		if (i>n1){
			A[k] = R[j];
			j++;
		}

	}
}

void mergeSort(int* A, int p, int r){
	if (p < r) {
		//int q = ceil((p+r)/2);
		int q = p+(r-p)/2;
		mergeSort(A,p,q);
		mergeSort(A,q+1,r);
		merge(A,p,q,r);
	}
}

#endif //ALGORITHMS_MERGE_HPP
