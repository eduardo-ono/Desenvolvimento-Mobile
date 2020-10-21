#include <iostream>

using namespace std;

void calcularImc(double peso, double altura)
{
    double imc = peso / (altura * altura);
    cout << "Peso = " << peso << endl;
    cout << "IMC = " << imc << "\n\n";
}

void calcularImc(double peso, double altura, string nome)
{
    double imc = peso / (altura * altura);

    cout << "Nome: " << nome << endl;
    cout << "Peso = " << peso << endl;
    cout << "IMC = " << imc << "\n\n";
}

int main()
{
    calcularImc(74, 1.82);
    calcularImc(75, 1.79, "Fulano");
    return 0;
}
