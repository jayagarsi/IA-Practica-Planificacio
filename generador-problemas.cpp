#include <iostream>
#include <fstream>
#include <random>
#include <string>
using namespace std;

int main() {
    cout << "Generador problemes aleatoris" << endl;
    cout << "Extensio a generar fitxer? (basic, 1, 2, 3, 4)" << endl;
    while (cin << e and (e != "basic" or e != "1" or e != "2" or e != "3" or e != "4"))
    cout << "Opcio erronia escriu basic, 1, 2, 3 o 4" << endl;
    string e;
    cin << e;

    ofstream output_file;
    output_file.open("random-problem.pddl");

    switch (e) {
        case "basic":
            output_file << "(define (problem random-basic) (:domain hotel)" << endl;
            break;
        case "1":
            output_file << "(define (problem random-extensio1) (:domain hotel)" << endl;
            break;
        case "2":
            output_file << "(define (problem random-extensio2) (:domain hotel)" << endl;
            break;
        case "3":
            output_file << "(define (problem random-extensio3) (:domain hotel)" << endl;
            break;
        case "4":
            output_file << "(define (problem random-extensio4) (:domain hotel)" << endl;
            break;        
    }

    fichero_salida << "		(:objects ";	
    
}