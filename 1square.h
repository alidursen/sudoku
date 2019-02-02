#ifndef REGION_H
#define REGION_H

#include <array>

class Line;
class Cell;

class Square{
protected:
	const int index;
	std::array<Cell*, 9> cells;
	std::array<bool, 9> missingValues;
	/* index is as follows:
	 * 012
	 * 345
	 * 678 */
	
};

#endif