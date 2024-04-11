import 'dart:io';
import 'pessoa.dart';

void main() {
  print("Digite seu nome:");
  String? nome = stdin.readLineSync();
  print("Digite seu peso (kg):");
  double? peso = double.tryParse(stdin.readLineSync() ?? '');
  print("Digite sua altura (m):");
  double? altura = double.tryParse(stdin.readLineSync() ?? '');

  if (nome != null && peso != null && altura != null) {
    Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
    double imc = pessoa.calcularImc();
    print("${pessoa.nome}, seu IMC é ${imc.toStringAsFixed(2)}");
  } else {
    print("Dados inválidos.");
  }
}
