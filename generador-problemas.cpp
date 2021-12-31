#include <iostream>
#include <fstream>
#include <random>
#include <string>
using namespace std;

void usage() {
    cout << "USAGE: ./generador-problemas -p ... -h ... -r ..." << endl;
    cout << "            -p nivel de extension a generar (basic, 1, 2, 3, 4)" << endl;
    cout << "            -h numero de habitaciones" << endl;
    cout << "            -r numero de reservas" << endl;
    exit(0);
}

int main(int argc, char* argv[]) {

    if (argc != 7) usage();

    ofstream output_file;
    output_file.open("random-problem.pddl");

    string e = argv[2];

    if (e == "basic") 
        output_file << "(define (problem random-basic) (:domain hotel)" << endl;

    else if (e == "1")
        output_file << "(define (problem random-extensio1) (:domain hotel)" << endl;

    else if (e == "2")
        output_file << "(define (problem random-extensio2) (:domain hotel)" << endl;

    else if (e == "3") 
        output_file << "(define (problem random-extensio3) (:domain hotel)" << endl;
    
    else if (e == "4")
        output_file << "(define (problem random-extensio4) (:domain hotel)" << endl;    

    else usage();

    output_file << "		(:objects ";	
    
}