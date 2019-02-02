#include "2cell.h"
#include "1regions.h"
#include <iostream>

Cell::Cell(int x, int y, Line* r, Line* c, Square* s)
	:index_x(x), index_y(y), bR(r), bC(c), bS(s){
	possibilities.fill(true);
	assigned=false;
	value=0;

	bR->at(index_x,this);
	bC->at(index_y,this);
	bS->at(index_x,index_y,this);
}

bool Cell::Assign(){ //makes the assignment only if there's a single possibility left
	if(!assigned){
		bool b=false;
		int l=9;
		for(int k=0; k<9; k++){
			if(possibilities[k]){
				if(!b){ l=k; b=true; }
				else { l=9; break; }
			}
		}
		if(l<9){
			value=l+1;
			assigned=true;
			possibilities[l]=false;
			
			bR->SpaceReduction(value,this);
			bC->SpaceReduction(value,this);
			bS->SpaceReduction(value,this);
		}
	}
	return assigned;
}

bool Cell::Assign(int n){ //very strong function with strong assumptions
	value=n;
	assigned=true;
	possibilities.fill(false);
	
	bR->SpaceReduction(value,this);
	bC->SpaceReduction(value,this);
	bS->SpaceReduction(value,this);
	
	return assigned;
}

void Cell::Reduce(int n){
	possibilities[n-1]=false;
}

bool Cell::isPossible(int n) const{
	return possibilities[n-1];
}

bool Cell::isAssigned() const{
	return assigned;
}

//Cell::Cell(): index_x(0), index_y(0), bR(nullptr), bC(nullptr), bS(nullptr){}