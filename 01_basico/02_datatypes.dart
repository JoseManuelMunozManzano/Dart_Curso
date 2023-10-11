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

  //? ============ Lists
  // Las listas o arrays son grupos de elementos que tienen algo que ver entre sí.
  // Son base 0.

  // Evitar mezclar tipos de datos distintos (y el uso de var)
  var villanosVar = ['Lex', 'Red Skull', 'Doom', 1, true, 2.3];

  List<String> villanos = ['Lex', 'Red Skull', 'Doom'];
  villanos[0] = 'Superman';

  // Añadir a la lista
  villanos.add('Duende verde');
  villanos.add('Duende verde');
  villanos.add('Duende verde');
  villanos.add('Duende verde');

  print(villanos);

  // Forma antigua de trabajar con listados. Obsoleto
  // List<String> villanosDeprecated = new List('Doom');

  //? ============ Sets
  // Muy parecidos a las Lists, pero con una gran diferencia: En un Set NO HAY ELEMENTOS DUPLICADOS

  // Para definirlos se usan llaves {}
  var villanosVar2 = {'Lex', 'Red Skull', 'Doom'};
  Set<String> villanos2 = {'Lex', 'Red Skull', 'Doom'};

  villanos2.add('Duende verde');
  villanos2.add('Duende verde');
  villanos2.add('Duende verde');
  villanos2.add('Duende verde');
  print(villanos2);

  // Eliminar duplicados de una lista. Se transforma a un Set y luego de nuevo a un List
  var villanosSet = villanos.toSet();
  print(villanosSet.toList());
}
