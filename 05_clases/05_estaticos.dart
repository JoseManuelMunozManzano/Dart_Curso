class Herramientas {
  // Indicando static, hacemos que una propiedad sea de la clase en vez de la instancia.
  // Es decir, para referirnos a ella utilizaremos el nombre de la clase y la propiedad.
  //  Herramientas.listado
  // Una instancia no tiene acceso a estas propiedades estáticas.
  //
  // Para hacerla de solo lectura, evitando que se puedan añadir elementos desde fuera
  // de la clase se usa const.
  static const List<String> listado = [
    'Martillo',
    'Llave Inglesa',
    'Desarmador'
  ];

  // Un método estático hace que el método sea de la clase en vez de la instancia.
  // Se le llamará usando el nombre de la clase seguida del nombre del método.
  // Se puede indicar Herramientas.listado, pero no hace falta porque estamos dentro
  // de la clase.
  static void imprimirListado() => listado.forEach(print);
}

void main(List<String> args) {
  // Se pueden añadir elementos a una propiedad de clase (si se define sin const),
  // pero no suele ser el motivo por el que se crean.
  // Suelen crearse como propiedades de lectura.
  //
  // Al declarar en la clase la propiedad con const, esto da un error en tiempo de
  // ejecución.
  //
  // Herramientas.listado.add('Tenazas');

  // Usando propiedad estática
  Herramientas.listado.forEach(print);

  // Usando método estático
  Herramientas.imprimirListado();
}
