main() {
  List<int> lista = [1, 2, 3, 4, 5];
  List<int>? lista2; // No inicializada -> es null
  List<int> lista3 = [3, 1, 2, 15, -10];
  List<String> nombres = ['Tony', 'Peter'];

  print('Length: ${lista.length}');

  // Primer elemento de la lista. Dos posibilidades
  print('First: ${lista.first}');
  print('First: ${lista[0]}');

  // Último elemento de la lista. Dos posibilidades
  print('Last: ${lista.last}');
  print('Last: ${lista[lista.length - 1]}');

  // La lista está vacía
  print('is empty: ${lista.isEmpty}');
  // Aquí mira si la lista es null
  print('is empty?: ${lista2 == null}');

  // Para trabajar una lista como un mapa.
  print('asMap: ${lista.asMap()}');
  Map listaMapa = lista.asMap();
  print('ListaMapa: ${listaMapa[4]}');

  Map nombreMapa = nombres.asMap();
  print('nombreMapa: ${nombreMapa}');
  print('nombreMapa: ${nombreMapa[1]}');

  // En qué posición índice se encuentra Peter.
  // Si no lo encuentra regresa -1
  print('indexOf: ${nombres.indexOf('Peter')}');

  // Pra conocer el índice de un objeto.
  // Si no lo encuentra regresa -1
  int mayor3 = lista.indexWhere((numero) => numero > 3);
  print('indexWhere mayor 3: $mayor3');

  // Remover un elemento de la lista.
  // Si lo logra eliminar devuelve true y si no devuelve false.
  // Vemos que realmente si modifica el listado original.
  print('Remove: ${nombres.remove('Tony')}');
  print('Remove: ${nombres}');

  // Mezclar aleatoriamente todo el contenido de un listado.
  lista.shuffle();
  print('Shuffle: $lista');

  // Ordenar una lista
  lista3.sort();
  print('Sort: $lista3');

  // Ordenar una lista de mayor a menor.
  // Devuelve un Iterable, y en este ejemplo la volvemos a pasar a lista.
  print('Reverse: ${lista3.reversed.toList()}');

  // Barrer un listado
  // Notar que como no son objetos complejos ni instancias de clase no pasa por referencia
  // y realmente no actualiza la lista original.
  nombres.forEach((nombre) {
    nombre = nombre.toUpperCase();
    print(nombre);
  });

  print('Listado: $nombres');

  // Para alterar la lista original.
  // El map es como un forEach pero retorna un Iterable con el producto de las modificaciones
  // realizadas al listado.
  final newList = nombres.map((nombre) => nombre.toUpperCase());
  print('newList: $newList');

  // Para que devuelva un listado, usar el método .toList()
  final newList2 = nombres.map((nombre) => nombre.toUpperCase()).toList();
  print('newList2: $newList2');
}
