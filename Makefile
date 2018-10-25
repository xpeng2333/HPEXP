ALL = test1
objects=LUSolve.o LE_SymSprsMat.o
parameters=-O3
test1:$(objects)
	g++ $(parameters) -o $@ $^
LUSolve.o:LUSolve.cpp LE_SymSprsMat.cpp
	g++ -c $(parameters) $^

clean:
	rm -f $(ALL) *.o *.map log.txt

