#include "1regions.h"
#include "2cell.h"
//#include <iostream>

Region::Region(int n): index(n){
	missingValues.fill(true);
}

void Region::SpaceReduction(int n, Cell* p){
	missingValues[n-1]=false;
	for(int i=0; i<9 && cells[i]!=p; i++) cells[i]->Reduce(n);
}

void Region::ValueLocation(){
	for(int i=0; i<9 && missingValues[i]; i++){ //value (i+1)
		int loc=10;
		bool flag=false;
		for(int j=0; j<9; j++){ //j'th cell
			if(!cells[j]->isAssigned() && cells[j]->isPossible(i+1)){
				if(!flag){ loc=j; flag=true; }
				else break;
			}
			cells[loc]->Assign(i+1);
		}
	}
}

void Region::at(int z, Cell* p){
	cells[z]=p;
}

void Line::ValueSquareLimitation(int n, int loc){
	if(! (cells[3*loc]->bS)->LimitedPossible(n, cells[3*loc], cells[3*loc+1], cells[3*loc+2]))
		for(int i=3; i<9; i++)
			cells[(3*loc+i)%9]->Reduce(n);
}

void Line::SquareValueLimitation(int n, Square* s, int loc){
	//'loc'ation of square, from 0-1-2
	s->LimitedReduction(n, cells[3*loc], cells[3*loc+1], cells[3*loc+2]);
}

std::array<bool, 3> Line::ValueAtSquare(int n){
	std::array<bool,3> r;
	r.fill(false);
	for(int i=0; i<3; i++)
		for(int j=0; j<3; j++)
			r[i] = r[i] || cells[3*i+j]->isPossible(n);
	return r;
}

void Line::AdvancedReduction(){
	for(int n=0; n<9 && missingValues[n]; n++){
		std::array<bool, 3> c = ValueAtSquare(n);
		int i = 0; for(int j=0; j<3; j++) if(c[j]) i++;
		if(i==1) for(int j=0; j<3; j++) if(c[j]) SquareValueLimitation(n, cells[3*j]->bS, j);
		if(i>1)  for(int j=0; j<3; j++) if(c[j]) ValueSquareLimitation(n, j);
	}
}

Line::Line(int n) : Region(n){}
Square::Square(int n) : Region(n){}

void Square::at(int x, int y, Cell* p){
	cells[3*(y%3) + (x%3)]=p;
}

void Square::LimitedReduction(int n, Cell* c1, Cell* c2, Cell* c3){
	for(int i=0; i<9 && cells[i]!=c1 && cells[i]!=c2 && cells[i]!=c3; i++)
		cells[i]->Reduce(n);
}

bool Square::LimitedPossible(int n, Cell* c1, Cell* c2, Cell* c3){
	bool r=false;
	for(int i=0; i<9 && cells[i]!=c1 && cells[i]!=c2 && cells[i]!=c3; i++)
		r = r || cells[i]->isPossible(n);
	return r;
}

/*Region::Region() :index(0){};
Line::Line() :Region(){};
Square::Square() :Region(){};*/