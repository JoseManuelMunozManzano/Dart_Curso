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

  //? ============ Booleans
  // Si se acepta un nulo, un booleano puede tener hasta 3 valores.

  // Como definirlo.
  // Sin inicializar, var no es capaz de inferir el tipo de dato, siendo dynamic y su valor null.
  // El tipo de dato dynamic indica que puede aceptar cualquier cosa.
  // Hay que evitar hasta donde sea posible usar el tipo de dato dynamic y también el var.
  // Hay ciertas excepciones al uso de dynamic, por ejemplos al hacer peticiones HTTP.
  var isActiveVar;

  bool isActive = true;
  print(isActive);

  // Negación de un booleano con !
  // Cuidado porque el símbolo ! sirve para muchas cosas en Dart.
  bool isNotActive = !isActive;
  print(isNotActive);

  // El uso de ! de esta forma sirve para indicar a Dart que confíe en nosotros,
  // aunque Dart no lo infiera, aquí la variable no va a tener un valor nulo.
  print(isNotActive!);
}
