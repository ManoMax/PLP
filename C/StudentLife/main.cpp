#include <bits/stdc++.h>

using namespace std;

struct Aluno {
    string nome;
    int animacao, sanidade, energia;

    Aluno() {nome = "";
    animacao = 0;
    sanidade = 0;
    energia = 0;}

    void informaStatus() {
        cout << "\nDisposicao: " << animacao << " Sanidade: " << sanidade << " Energia: " << energia << "\n";
    }

    bool validaAluno(string nom, string classe) {
        nome = nom;
        switch (toupper(classe[0])) {
        case 'A':
            animacao = 90;
            sanidade = 60;
            energia = 100;
            return true;
        case 'B':
            animacao = 60;
            sanidade = 90;
            energia = 100;
            return true;
        case 'C':
            animacao = 75;
            sanidade = 75;
            energia = 100;
            return true;
        default:
            cout << "Digite A, B ou C." << endl;
            return false;
        }
    }

    string getNome() { return nome;}

    string valorStatus(int valor) {
        if (valor < 0) {
            return to_string(valor);
        } else {
            return "+" + to_string(valor);
        }
    }

    void setEnergia(int ener) {
        energia += ener;
        cout << valorStatus(ener) << " de Energia.\n" << endl;
    }
    void setSanidade(int sani) {
        sanidade += sani;
        cout << valorStatus(sani) << " de Sanidade.\n" << endl;
    }
    void setAnimacao(int anima) {
        animacao += anima;
        cout << valorStatus(anima) << " de Animacao.\n" << endl;
    }
};

bool validaResposta(string resposta) {
    bool saida = false;
    switch (toupper(resposta[0])) {
        case 'A':
        case 'B':
        case 'C':
            saida = true;
            break;
        default:
            saida = false;
            cout << "Digite A, B ou C." << endl;
            break;
    }
    return saida;
}

void primeiraFase(Aluno aluno) {
    cout << "Voce esta atrasado! O onibus passa em 10 minutos.\n" <<
            "Voce ja esta arrumado, mas falta metade do pao do cafe da manha.\n\n" <<
            "Terminar de comer e nao escovar os dentes. Digite a.\n" <<
            "Nao terminar o cafe e escovar os dentes. Digite b\n" <<
            "Terminar o cafe, escovar os dentes e chegar 15 minutos atrasado. Digite c.\n" << endl;

    string resposta;

    while(!validaResposta(resposta)) {
        cin >> resposta;
    }

    switch (toupper(resposta[0])) {
        case 'A':
            aluno.setEnergia(-5);
            aluno.setAnimacao(+5);
            break;
        case 'B':
            aluno.setEnergia(+5);
            aluno.setAnimacao(-5);
            break;
        case 'C':
            aluno.setEnergia(+5);
            aluno.setAnimacao(-10);
            aluno.setSanidade(+5);
            break;
        default:
            cout << "Digite A, B ou C." << endl;
    }
}

int main(){
    
    Aluno aluno = Aluno();

    cout << "Digite seu nome: " << endl;
    string nome;
    cin >> nome;

    cout << "\nEscolha seu modo de vida:\na) Estudo\nb) Social\nc) Pessoal\n" << endl;
    string classe;
    cin >> classe;

    while(!aluno.validaAluno(nome, classe)) {
        cin >> classe;
    }
    
    aluno.informaStatus();

    cout << "\nSeja bem-vindo a UFCG " << aluno.getNome() << "." << endl;

    primeiraFase(aluno);

    aluno.informaStatus();

    system("pause");
    return 0;
}
