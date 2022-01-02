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

    string p = argv[2];
    int h = atoi(argv[4]);
    int r = atoi(argv[6]);

    if (p == "basic") 
        output_file << "(define (problem random-basic)" << endl << "   (:domain hotel)" << endl;

    else if (p == "1")
        output_file << "(define (problem random-extensio1)" << endl << "   (:domain hotel)" << endl;

    else if (p == "2")
        output_file << "(define (problem random-extensio2)" << endl << "   (:domain hotel)" << endl;

    else if (p == "3") 
        output_file << "(define (problem random-extensio3)" << endl << "   (:domain hotel)" << endl;
    
    else if (p == "4")
        output_file << "(define (problem random-extensio4)" << endl << "   (:domain hotel)" << endl;    

    else usage();

    // APARTAT D'OBJECTES

    output_file << "   (:objects ";
    vector<string> habitaciones(h, "H");
    vector<string> reservas(r, "R");

    for (int i = 0; i < h; ++i) {
        habitaciones[i] += to_string(i);
        output_file << habitaciones[i] << " ";
    }
    output_file << "- habitacion" << endl;

    output_file << "             ";

    for (int i = 0; i < r; ++i) {
        reservas[i] += to_string(i);
        output_file << reservas[i] << " ";
    }
    output_file << "- reserva" << endl;
    output_file << "	)" << endl;
    output_file << endl;

    // APARTAT D'INIT

    output_file << "   (:init" << endl;

    std::default_random_engine generator;

    std::uniform_int_distribution<int> capacidad(1, 4);
    std::uniform_int_distribution<int> dias(1, 30);

    for (int i = 0; i < h; ++i) {
        int c = capacidad(generator);
        output_file << "        (= (capacidadH " << habitaciones[i] << ") " << c << ")" << endl;
    }

    output_file << endl;

    for (int i = 0; i < r; ++i) {
        int c = capacidad(generator);
        output_file << "        (= (capacidadR " << reservas[i] << ") " << c << ")" << endl;
    }

    output_file << endl;

    for (int i = 0; i < r; ++i) {
        int diaI = dias(generator);
        std::uniform_int_distribution<int> diaFinal(diaI, 30);
        int diaF = diaFinal(generator);
        output_file << "        (=(diaI " << reservas[i] << ") " << diaI << ")" << endl;
        output_file << "        (=(diaF " << reservas[i] << ") " << diaF << ")" << endl;
        output_file << endl;
    }

    output_file << endl;

    for (int i = 0; i < r; ++i) {
        output_file << "        (libreR " << reservas[i] << ")" << endl;
    }

    output_file << "    )" << endl;
    output_file << endl;

    if (p == "1") {
        output_file << "        (= (reservas_eliminadas) 0)" << endl;
        output_file << endl;
    }

    // APARTAT DE GOAL

    output_file << "	(:goal (forall (?r - reserva) (not (libreR ?r))))" << endl;
    output_file << ")" << endl << endl;

    if (p == "1") {
        output_file << "        (:metric minimize (reservas_eliminadas))" << endl;
        output_file << endl;
    }

}