import 'dart:io';

main() {
  stdout.writeln('¿Cuál es tu edad?');

  // Se indica que siempre vamos a devolver un valor con !
  // int edad = int.parse(stdin.readLineSync()!);

  // Esto es más seguro (evita el problema Ctrl+D que devuelve null)
  int edad = int.parse(stdin.readLineSync() ?? '0');

  if (edad >= 21) {
    stdout.writeln('Ciudadano');
  } else if (edad >= 18) {
    stdout.writeln('Mayor de edad');
  } else {
    stdout.writeln('Menor de edad');
  }
}
