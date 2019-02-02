#include "0ProblemSpace.h"

ProblemSpace::ProblemSpace(){
	for(int i=0; i<9; i++){
		rows[i]		= new Line(i);
		columns[i]	= new Line(i);
		squares[i]	= new Square(i);
	}

	for(int i=0; i<9; i++)
		for(int j=0; j<9; j++)
			cells[i][j] = new Cell(i,j,rows[i],columns[i],squares[3*(j/3)+(i/3)]);

	std::cout<<"You'll now be asked to enter 9 lines.\nEach line must contain " <<
			"at least 9 elements.\nNon-digit characters and 0 will be ignored." << std::endl;
	for(int i=0; i<9; i++){
		std::string s;
		std::getline(std::cin, s);
		for(int j=0; j<9; j++)
			if(s.at(j)-'0'>0 && s.at(j)-'0'<10)
				cells[i][j]->Assign(s.at(j)-'0');
	}
}

void ProblemSpace::Solve(){
	int tries=0;
	while(!CheckCompletion() && tries<100){
		do{
			Regionwide();
			AdvancedLine();
		} while(DirectAssignment());
		tries++;
	}
	if(tries==100) std::cout << "Too many tries; exiting." << std::endl;
}

bool ProblemSpace::CheckCompletion(){
	bool b=true;
	for(int i=0; i<9; i++)
		for(int j=0; j<9; j++)
			b = b && cells[i][j]->isAssigned();
	return b;
}

bool ProblemSpace::DirectAssignment(){
	bool b=false;
	for(int i=0; i<9; i++)
		for(int j=0; j<9; j++)
			b = b || cells[i][j]->Assign();
	return b;
}

void ProblemSpace::Regionwide(){
	for(int i=0; i<9; i++){
		squares[i]->ValueLocation();
		rows[i]->ValueLocation();
		columns[i]->ValueLocation();
	}
}

void ProblemSpace::AdvancedLine(){
	for(int i=0; i<9; i++){
		rows[i]->AdvancedReduction();
		columns[i]->AdvancedReduction();
	}
}