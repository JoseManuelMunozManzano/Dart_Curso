main() {
  String nombre = 'José Manuel';
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
}
