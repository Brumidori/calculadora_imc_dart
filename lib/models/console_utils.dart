import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble(String s, String valorSaida) {
    do {
      var value = lerStringComTexto(s);
      if (value == valorSaida) {
        return null;
      }
      try {
        return double.parse(value);
      } catch (e) {
        print("opção inválida");
      }
    } while (true);
  }
}
