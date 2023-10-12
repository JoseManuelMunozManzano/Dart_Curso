import 'dart:io';

/**
 * Obtener información introducida por el usuario en consola
 */
main() {
  // Imprimir en terminal o cmd
  // writeln o 'Hola\n' hacen lo mismo.
  stdout.writeln('¿Cuál es tu nombre?');

  // Leer información del usuario.
  // Detiene la ejecución del programa y espera una entrada del usuario.
  // stdin solo retorna strings.
  //
  // Como readLineSync puede regresar un valor nulo y trabajamos con null safety,
  // el tipo de variable será String? con interrogación, indicando que puede que
  // obtengamos un nulo.
  //
  // Otra solución es, si no obtenemos nada de readLineSync, dar un valor por defecto.
  // Uso de ??
  //
  // NOTA: El valor nulo lo obtendremos si, cuando tenemos que introducir información,
  //       pulsamos Ctrl+D

  String? nombre = stdin.readLineSync();
  // String nombre = stdin.readLineSync() ?? 'Sin valor';

  stdout.writeln('Tu nombre es: $nombre');
}
