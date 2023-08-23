import 'package:meu_app/models/pessoa.dart';
import 'package:meu_app/service/calculadora_imc.dart';
import 'package:test/test.dart';

void main() {
  test('Cálculo de IMC', () {
    Pessoa pessoa = Pessoa('João', 70, 1.80);
    expect(calcularIMC(pessoa.getPeso(), pessoa.getAltura()),
        ' seu IMC é 21.6 o que representa: Saudável');
  });
}
