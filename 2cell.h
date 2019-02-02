#ifndef CELL_H
#define CELL_H

#include <array>

class Line;
class Square;

class Cell{
	int value;
	bool assigned;
	std::array<bool,9> possibilities;
	const int index_x, index_y;
	
public:
	//to denote regions each cells belongs to
	Line* const bR;
	Line* const bC;
	Square* const bS;
	
	Cell(int x, int y, Line* r, Line* c, Square* s);
	//Cell();
	
	void Reduce(int n);
	bool Assign();
	bool Assign(int n);
	bool isPossible(int n) const;
	bool isAssigned() const;
};

#endif