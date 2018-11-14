//
// Created by id on 9/3/17.
//

#ifndef ALGORITHMS_GENERATORS_HPP
#define ALGORITHMS_GENERATORS_HPP

#include <cstdlib>
#include <ctime>

void intRandArray(int arr[], int size){
	std::srand((unsigned) std::time(NULL));

	for (int i = 0; i < size; ++i) {
		arr[i] = 1 + std::rand() % 1000;
	}

}

#endif //ALGORITHMS_GENERATORS_HPP
