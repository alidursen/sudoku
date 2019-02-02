#ifndef REGIONS_H
#define REGIONS_H

#include <array>

class Cell;

class Region{
protected:
	const int index;
	std::array<Cell*,9> cells;
	std::array<bool, 9> missingValues;
public:
	Region(int n);
	//Region();
	
	void SpaceReduction(int n, Cell* p);
	void ValueLocation();//tries to locate every value
	
	void at(int z, Cell* p);
};

class Square: public Region{
/*for Squares, indexing is as follows:
 * 012
 * 345
 * 789*/
public:
	Square(int n);
	//Square();
	void at(int x, int y, Cell* p);
	
	//work on all cells except the given three
	void LimitedReduction(int n, Cell* c1, Cell* c2, Cell* c3);
	bool LimitedPossible(int n, Cell* c1, Cell* c2, Cell* c3);
};

class Line: public Region{
public:
	/*the following are the two sides of the coin:
	 * 
	 * VSL: given a value that may be in multiple squares, each square is checked to see if value
	 * 		can exist elsewhere within. If not, then the value is in the intersection of square
	 * 		and line, and therefore its probability space doesn't extend to other squares.
	 * 
	 * SVL: we somehow have determined that value lies in a particular square.
	 * 		We then inform the square of this so that it reduces probability space of
	 * 		its cells. */
	void ValueSquareLimitation(int n, int loc);
	void SquareValueLimitation(int n, Square* s, int loc);
	
	std::array<bool, 3> ValueAtSquare(int n);
	
	void AdvancedReduction();
	
	Line(int n);
	//Line();
};

#endif