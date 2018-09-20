#include <iostream>
#include <stdlib.h>

using namespace std;

class Aluno {
    char nome;
    int animacao, sanidade, energia;
public:
    Aluno(char, string);

    char getNome() { return nome;}
    void setEnergia(int ener) {
        energia = ener;
        cout << ener << " de Energia.\n" << endl;
    }
    void setSanidade(int sani) {
        sanidade = sani;
        cout << sani << " de Sanidade.\n" << endl;
    }
    void setAnimacao(int anima) {
        animacao = anima;
        cout << anima << " de Animacao.\n" << endl;
    }
};

Aluno::Aluno(string nom, char classe) {
    nome = nom;
    switch (classe) {
    case 'a':
    case 'A':
        animacao = 90;
        sanidade = 60;
        energia = 100;
        break;
    case 'b':
    case 'B':
        animacao = 60;
        sanidade = 90;
        energia = 100;
        break;
    case 'c':
    case 'C':
        animacao = 75;
        sanidade = 75;
        energia = 100;
        break;
    default:
        cout << "Digite A, B ou C." << endl;
    }

}

int main()
{
    cout << "Digite seu nome: " << endl;
    char nome;
    cin >> nome;

    cout << "\nEscolha sua Classe:\na) Estudo\nb) Social\nc) Pessoal\n" << endl;

    char classe;
    cin >> classe;
    Aluno aluno = Aluno(nome, classe);

    cout << "\nSeja bem-vindo a UFCG " << aluno.getNome() << "." << endl;

    cout << "Você esta ná atrasado! O ônibus passa em 10 minutos.\n" <<
            "Você já está arrumado, mas falta metade do pão do café da manhã.\n\n" <<
            "Você decide não terminar de comer e escovar logo os dentes. Digite a.\n" <<
            "Você decide terminar o café e escovar os dentes na Faculdade. Digite b\n" <<
            "Você decide terminar o café, escovar os dentes e chegar 15 minutos atrasado. Digite c.\n" << endl;

    string resposta;
    cin >> resposta;

    switch (resposta) {
        case 'a':
        case 'A':
            aluno.setEnergia(-5);
            aluno.setAnimacao(+5);
            break;
        case 'b':
        case 'B':
            aluno.setEnergia(+5);
            aluno.setAnimacao(-5);
            break;
        case 'c':
        case 'C':
            aluno.setEnergia(+5);
            aluno.setAnimacao(-10);
            aluno.setSanidade(+5);
            break;
        default:
            cout << "Digite A, B ou C." << endl;
    }

    system("pause");
    return 0;
}
