.PHONY: clean All

All:
	@echo "----------Building project:[ sudoku - Release ]----------"
	@"$(MAKE)" -f  "sudoku.mk"
clean:
	@echo "----------Cleaning project:[ sudoku - Release ]----------"
	@"$(MAKE)" -f  "sudoku.mk" clean
