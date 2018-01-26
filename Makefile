FC=gfortran -c
LD=gfortran
SRC=fact.f90 bessel.f90 secant.f90 main.f90
OBJ=fact.o bessel.o secant.o main.f90
bessel:
	$(FC) $(SRC)
	$(LD) $(OBJ) -o root.x
	rm -rf *.o
clean:
	rm -rf bessel.x
	rm -rf *.o *.pdf *.ps *.dat *.out

