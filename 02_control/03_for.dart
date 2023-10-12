import 'dart:io';

main() {
  stdout.writeln('Introduzca base de la tabla de multiplicar');
  int base = int.parse(stdin.readLineSync() ?? '1');

  for (int i = 1; i <= 10; i++) {
    print('$base * $i = ${base * i}');
  }
}
