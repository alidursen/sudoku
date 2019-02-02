#ifndef PROBLEMSPACE_H
#define PROBLEMSPACE_H

#include "2cell.h"
#include "1regions.h"
#include <string>
#include <iostream>

class ProblemSpace{
	Cell* cells[9][9];
	Line* rows[9];
	Line* columns[9];
	Square* squares[9];
	
	bool DirectAssignment();
	bool CheckCompletion();
	void Regionwide();
	void AdvancedLine();
public:
	ProblemSpace();
	
	void Solve();
	void Print();
};

#endif