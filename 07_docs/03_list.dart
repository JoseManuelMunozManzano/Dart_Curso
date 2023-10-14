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
  print('nombreMapa: ${nombreMapa[1]}');
}
