#include <iostream>
#include <cstdio>

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

    printf("Nome: %s\n", nome);
    cout << "Nome: " << nome << endl;
    printf("Peso = %.1f\n", peso);
    printf("IMC = %.1f\n\n", imc);
}

int main()
{
    calcularImc(74, 1.82);
    calcularImc(74, 1.82, "Fulano");
    calcularImc(74, "Fulano", 1.82);  // ERRO!
    return 0;
}
