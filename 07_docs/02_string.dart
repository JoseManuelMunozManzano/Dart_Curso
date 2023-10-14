main() {
  String nombre = 'Jose Manuel';
  String apellido = 'Muñoz';

  // Otra forma de concatenar literales
  String nombreCompleto = '$nombre' ' ' '$apellido';

  print('String: $nombreCompleto');

  print('Length: ${nombreCompleto.length}');
  print('Contains M: ${nombreCompleto.contains('M', 3)}');
  print('EndsWith: ${nombreCompleto.endsWith('z')}');

  // Muy útil para ficheros formato estricto o largos específicos.
  print('PadLeft: ${nombreCompleto.padLeft(20, '...')}');
  print('PadRight: ${nombreCompleto.padRight(20, '...')}');

  // Operadores
  // Este operador, [], nos permite trabajar el String como si fuera una lista.
  print('Operador []: ${nombreCompleto[10]}');

  // El operador * escribe el String tantas veces como se indique.
  print('Operador *: ${nombreCompleto * 2}');
  print('Operador *: ${'*' * 10}');

  // Cambiar todas las e por a
  print('ReplaceAll: ${nombreCompleto.replaceAll('e', 'a')}');
  // Con un Regexp. Recordar que el new es opcional.
  print('ReplaceAll: ${nombreCompleto.replaceAll(new RegExp(r'e'), 'a')}');

  // Substring sirve para cortar partes del String
  print('Substring: ${nombreCompleto.substring(0, 5)}...');

  // Para conocer la posición exacta de un elemento en un String
  print('indexOf: ${nombreCompleto.indexOf(' ')}');

  // Para segmentar un String a partir de un patrón. Regresa una lista de substrings.
  print('Split: ${nombreCompleto.split(' ')}');

  // Última letra de un string capitalizada.
  print(
      'Última del string: ${nombreCompleto[nombreCompleto.length - 1].toUpperCase()}');
}
