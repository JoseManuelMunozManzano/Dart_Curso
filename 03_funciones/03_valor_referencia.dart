// Cuando mandamos primitivos (booleanos, int, double, String), se mandan por valor,
// es decir, se manda una copia en una nueva dirección de memoria, de forma que,
// aunque se cambie el valor, cambiamos el valor de la copia y el original no se
// ve modificado.
String capitalizar(String texto) {
  texto = texto.toUpperCase();
  return texto;
}

// Cuando mandamos objetos (listas, mapas, sets...), Dart los manda por referencia,
// es decir, se manda la dirección de memoria, de forma que al cambiar el valor,
// estamos mutando el ORIGINAL.
Map<String, String> capitalizarMapa(Map<String, String> mapa) {
  // Null Safety: Indicamos que mapa['nombre'] es opcional usando ?
  //      y para evitar null, indicamos que, si es null, devuelva No hay nombre.
  //
  // Otra opción hubiera sido mapa['nombre']! para decirle a Dart que confie
  //      en nosotros y que nombre SIEMPRE va a venir informada.
  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre';
  return mapa;
}

// Rompiendo la referencia: Se usa el operador spread para esparcir las propiedades
//    y crear un nuevo mapa con una nueva dirección de memoria.
// Es lo mismo que se hace en JavaScript.
// NOTA: Hay otras formas de romper la referencia, pero usar el operador spread es muy fácil.
Map<String, String> capitalizarMapaRompiendoReferencia(
    Map<String, String> mapa) {
  mapa = {...mapa};

  mapa['nombre'] = mapa['nombre']?.toUpperCase() ?? 'No hay nombre';
  return mapa;
}

void main(List<String> args) {
  String nombre = 'josé manuel';
  // La variable nombre es un tipo de dato primitivo y se pasa por valor. No va a mutar.
  String nombre2 = capitalizar(nombre);

  print(nombre);
  print(nombre2);

  Map<String, String> persona = {'nombre': 'Tony Stark'};
  // La variable persona es un tipo de dato objeto y se pasa por referencia. Va a mutar.
  Map<String, String> persona2 = capitalizarMapa(persona);

  print(persona);
  print(persona2);

  Map<String, String> persona3 = {'nombre': 'Peter Parker'};
  // La variable persona3 es un tipo de dato objeto y se pasa por referencia.
  // Pero no va a mutar porque hemos roto la referencia dentro de la función.
  Map<String, String> persona4 = capitalizarMapaRompiendoReferencia(persona3);

  print(persona3);
  print(persona4);
}
