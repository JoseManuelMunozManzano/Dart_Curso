import 'dart:io';

main() {
  String continuar = 'y';
  int contador = 0;

  // Se ejecuta el cuerpo del do y se evalua la condición while.
  // Es decir, como mínimo, el cuerpo SIEMPRE se ejecutará una vez.
  do {
    contador++;
    stdout.writeln('Contador: $contador');

    stdout.writeln('¿Desea continuar? (y/n)');
    continuar = stdin.readLineSync() ?? 'n';
  } while (continuar == 'y');
}
