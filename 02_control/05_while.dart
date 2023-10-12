import 'dart:io';

main() {
  String continuar = 'y';
  int contador = 0;

  // Se evalua la condición y si se cumple ejecuta el cuerpo.
  // Al terminar el cuerpo vuelve a evaluar la condición hasta que no se cumpla.
  while (continuar == 'y') {
    contador++;
    stdout.writeln('Contador: $contador');

    stdout.writeln('¿Desea continuar? (y/n)');
    continuar = stdin.readLineSync() ?? 'n';
  }
}
