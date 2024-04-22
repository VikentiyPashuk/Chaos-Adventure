# Add this line at the beginning of the makefile
.PHONY: all

# Add this line to print a message before each make command
$(info If compiled run all the relevant codes by execute: ./run_shell.sh)

FC = gfortran
TARGET = chaos-trajectory 

all: ${TARGET} chaos-bifurcation chaos-trajectory-diff chaos-fx-population \
	chaos-recursive chaos-fx-composition chaos-fixed-r-bifurcation-exp \
	chaos-bifurcation-exp chaos-fx-exp chaos-fx-composition-exp chaos-recursive-exp \
	chaos-bifurcation-sin
	

${TARGET}: chaos-trajectory.f90
	${FC} -o $@ $^
	
chaos-bifurcation: chaos-bifurcation.f90
	${FC} -o $@ $^
	
chaos-trajectory-diff: chaos-trajectory-diff.f90
	${FC} -o $@ $^

chaos-fx-population: chaos-fx-population.f90
	${FC} -o $@ $^
	
chaos-recursive: chaos-recursive.f90
	${FC} -o $@ $^

chaos-fx-composition: chaos-fx-composition.f90
	${FC} -o $@ $^
	
chaos-fixed-r-bifurcation-exp: chaos-fixed-r-bifurcation-exp.f90
	${FC} -o $@ $^
	
chaos-bifurcation-exp: chaos-bifurcation-exp.f90
	${FC} -o $@ $^
	
chaos-fx-exp: chaos-fx-exp.f90
	${FC} -o $@ $^
	
chaos-fx-composition-exp: chaos-fx-composition-exp.f90
	${FC} -o $@ $^
	
chaos-recursive-exp: chaos-recursive-exp.f90
	${FC} -o $@ $^
	
chaos-bifurcation-sin: chaos-bifurcation-sin.f90
	${FC} -o $@ $^

clean:
	rm -f ${TARGET} chaos-bifurcation chaos-trajectory-diff chaos-fx-population chaos-recursive \
	chaos-fx-composition chaos-fixed-r-bifurcation-exp chaos-bifurcation-exp chaos-fx-exp \
	chaos-fx-composition-exp chaos-recursive-exp chaos-bifurcation-sin


