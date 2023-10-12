// Las funciones flecha son en un 99% idénticas a las funciones flecha de JavaScript.

int sumar(int x, int y) {
  return x + y;
}

// Usando función flecha.
// Lo primero que se indica es el tipo de retorno.
// Si solo tenemos una instrucción y además es el return de lo que queremos ejecutar.
int sumarFlecha(int x, int y) => x + y;

main() {
  int a = 10, b = 20;
  int resultado = sumarFlecha(a, b);

  print(resultado);

  List<int> listado = [1, 2, 3, 4, 5, 6, 6, 7, 8, 9, 10, 10, 1];

  // Filtrado. Devuelve un iterable. Se sabe porque los números están entre paréntesis.
  // (5, 6, 6, 7, 8, 9, 10, 10)
  // Un Iterable es un tipo de dato que puede barrerse en un ciclo for o con el que podemos
  // trabajar de una manera secuencial.
  //
  // var nuevoListado = listado.where((numero) {
  //   return numero > 4;
  // });

  // Lo mismo con una función de flecha.
  var nuevoListado = listado.where((n) => n > 4);

  // De este listado nuevo solo quiero los números que son únicos.
  // Ahora el resultado es de este tipo: {5, 6, 7, 8, 9, 10}
  // Ya no es un Iterable. Es un Set.
  print(nuevoListado.toSet());

  // Ahora el resultado es de este tipo: [5, 6, 7, 8, 9, 10]
  // Ya no es un Iterable ni un Set. Es una List.
  print(nuevoListado.toSet().toList());
}
