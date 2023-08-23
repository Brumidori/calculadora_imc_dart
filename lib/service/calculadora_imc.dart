String calcularIMC(double peso, double altura) {
  try {
    final double imc =
        double.parse((peso / (altura * altura)).toStringAsFixed(2));

    if (imc < 16) {
      return ' seu IMC é $imc o que representa: Magreza grave';
    } else if (imc >= 16 && imc < 17) {
      return ' seu IMC é $imc o que representa: Magreza moderada';
    } else if (imc >= 17 && imc < 18.5) {
      return ' seu IMC é $imc o que representa: Magreza leve';
    } else if (imc >= 18.5 && imc < 25) {
      return ' seu IMC é $imc o que representa: Saudável';
    } else if (imc >= 25 && imc < 30) {
      return ' seu IMC é $imc o que representa: Sobrepeso';
    } else if (imc >= 30 && imc < 35) {
      return ' seu IMC é $imc o que representa: Obesidade Grau I';
    } else if (imc >= 35 && imc < 40) {
      return ' seu IMC é $imc o que representa: Obesidade Grau II (severa)';
    } else {
      return ' seu IMC é $imc o que representa: Obesidade Grau III (mórbida)';
    }
  } catch (e) {
    throw Exception(e);
  }
}
