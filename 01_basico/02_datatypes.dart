main() {
//? ============ Números
  var x = 1; // Mejor especificar el tipo de dato concreto
  int a = 10;
  double b = 5.5;

  // Null Safety
  // No se el valor todavía o puede ser null. Usar ?
  int? c;
  print(c);

  // Nombres de variables correctos
  int _a = 30;
  double $b = 40;

  print(_a + $b); // int + double --> double

  //? ============ Strings
  var nombreX = 'Tony';
  // Se puede usar comilla simple o doble. Se suele usar la comilla simple
  String nombre = "Tony";

  print(nombreX == nombre);
  print(nombre);

  // Null Safety
  String? nombre2;
  print(nombre2);

  // Escape de caracteres
  String nombre3 = 'O\'Connor';
  print(nombre3);

  // Usando comillas dobles cuando en el texto hay comillas simples
  String nombre3X = "O'Connor";

  // Strings multilinea usando triple comilla simple o triple comilla doble.
  // Se usa la variable nombre, usando $, dentro del string multilinea.
  String multilinea = '''
  Hola Mundo
  ¿Cómo estás?
  $nombre
  O'Connor''';

  print(multilinea);

  // Se pueden usar variables dentro de cualquier string
  String apellido = 'Stark';
  String nombreCompleto = '$nombre $apellido';
  print(nombreCompleto);
}
