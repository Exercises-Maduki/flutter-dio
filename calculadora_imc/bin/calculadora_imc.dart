import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calcularImc() {
    return peso / (altura * altura);
  }
}

void main() {
  print('Digite seu nome:');
  String? nome = stdin.readLineSync();

  print('Digite seu peso em quilogramas:');
  double? peso = double.tryParse(stdin.readLineSync() ?? '');

  print('Digite sua altura em metros:');
  double? altura = double.tryParse(stdin.readLineSync() ?? '');

  if (nome != null && peso != null && altura != null) {
    Pessoa pessoa = Pessoa(nome, peso, altura);
    double imc = pessoa.calcularImc();
    print("${pessoa.nome}, seu IMC é ${imc.toStringAsFixed(2)}");
    if (imc < 18.5) {
      print("Você está abaixo do peso ideal.");
    } else if (imc >= 18.5 && imc <= 24.9) {
      print("Você está com o peso normal.");
    } else if (imc >= 25 && imc <= 29.9) {
      print("Você está com sobrepeso.");
    } else if (imc >= 30 && imc <= 34.9) {
      print("Obesidade grau I.");
    } else if (imc >= 35 && imc <= 39.9) {
      print("Obesidade grau II.");
    } else {
      print("Obesidade grau III ou mórbida.");
    }
  } else {
    print('Um ou mais valores inválidos foram inseridos.');
  }
}
