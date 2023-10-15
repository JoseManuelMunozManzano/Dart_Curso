main() {
  final persona = {
    'nombre': 'José Manuel',
    'apellido': 'Muñoz',
    'edad': 44,
  };

  final direccion = {
    'ciudad': 'Madrid',
    'pais': ' España',
  };

  print('Persona: $persona');

  // length: Cuántos pares de valores tenemos en el mapa.
  print('Persona: ${persona.length}');

  // keys regresa un Iterable que internamente, en este caso, maneja Strings (en otros puede ser int u Object)
  print('keys: ${persona.keys}');

  // values regresa un Iterable que internamente, en este caso, maneja Objects (hay String e int)
  print('values: ${persona.values}');

  // Fusionar pares de valores de dirección a la persona
  persona.addAll(direccion);
  print('addAll: $persona');

  // Eliminar pares de valores
  persona.remove('pais');
  print('remove: $persona');

  // Borrar pares de valores que cumplan cierta condición. Barre todos los valores.
  // El callback devuelve true si el par de valores se borra o false si no se borra.
  // Descomentar para probar, pero comentar luego para tener más datos de prueba.
  //! persona.removeWhere((key, value) => key != 'nombre');
  print('removeWhere: $persona');

  // forEach sirve para barrer los pares de valores y realizar operaciones sobre
  // cada par de valor. Devuelve void.
  persona.forEach((key, value) {
    print('key: $key    value: $value');
  });

  // Si quisiéramos retornar un nuevo mapa con alguna mutación en alguna/s propiedad/es
  // el forEach no nos sirve porque regresa void.
  // Se utiliza el método map, que regresa una nueva instancia de map con las modificaciones.
  // No modifica el mapa original.
  final nuevoMapa = persona
      .map((key, value) => MapEntry(key, value.toString().toUpperCase()));
  print('persona map: $nuevoMapa');
}
