all: generador-problemas

generador-problemas: generador-problemas.cpp
	g++ -o generador-problemas generador-problemas.cpp

clean: 
	rm -rf *.o generador-problemas

erase_file: 
	rm -rf random-problem.pddl