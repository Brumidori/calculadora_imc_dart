import 'dart:io';
import 'package:meu_app/exception/nome_invalido_exception.dart';
import 'package:meu_app/models/console_utils.dart';
import 'package:meu_app/models/pessoa.dart';
import 'package:meu_app/service/calculadora_imc.dart';

void main(List<String> arguments) {
  try {
    String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno:");
    try {
      if (nome.trim() == "") {
        throw NomeInvalidoException();
      }
    } on NomeInvalidoException {
      nome = "*nome vazio*";
      print("Nome vazio");
    } catch (e) {
      print(e);
    }

    double? peso =
        ConsoleUtils.lerDouble("Digite o peso em (kg) ou S para sair: ", "S");
    if (peso == null) {
      print("Peso inválido.");
      exit(0);
    }

    double? altura =
        ConsoleUtils.lerDouble("Digite a altura (m) ou S para sair: ", "S");
    if (altura == null) {
      print("Altura inválida.");
      exit(0);
    }

    Pessoa pessoa = Pessoa(nome, peso, altura);
    String imc = calcularIMC(pessoa.getPeso(), pessoa.getAltura());
    print("${pessoa.getNome()},$imc");
  } catch (e) {
    print("Ocorreu um erro: $e");
  }
}
