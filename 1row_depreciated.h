#ifndef ROW_H
#define ROW_H

#include <array>

Class Square;
Class Cell;

Class Row{
	const int index;
	std::array<Cell*,9> contains;
	std::array<bool, 9> missingValues;
	
public:
	Row(int i);
	
	void SpaceReduction(int n, Cell* p);
	void ValueLocation(int n);
	
	/*See 1column.h for an explanation of functions below*/
	void ValueSquareLimitation(int n, Square* s);
	void SquareValueLimitation(int n, Square* s);
	
	void at(int x, Cell* p);
	std::array<bool, 3> ValueAtSquare(int n);
};

#endif