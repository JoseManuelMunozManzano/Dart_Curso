//! Argumentos posicionales
// Si no se indica tipo de dato, mensaje tendrá el tipo de dato dynamic.
// Pero es una muy buena práctica indicar siempre el tipo de dato, para que
// el programador sepa con que trabaja la función.
// En caso contrario nos podrán mandar cualquier cosa (como en JavaScript)
void saludar(String mensaje) {
  print(mensaje);
}

// Con Null Safety, para hacer opcional un argumento posicional, se indica String?
// Pero entonces la llamada sería: saludar(null)
// Es decir, con argumentos posicionales, si es opcional, hay que indicar el null
// No llega a ser opcional del todo.
void saludar2(String? mensaje) {
  print(mensaje);
}

// Argumentos posicionales opcionales de verdad.
// Podemos indicar un valor por defecto y los enmarcaremos entre []
// Si hay más de un opcional y queremos indicar solo la edad, realmente por argumentos posicionales
// no se puede. Hay que indicar un nombre.
void saludar3(String mensaje,
    [String nombre = '<insertar nombre>', int edad = 20]) {
  print('$mensaje $nombre - $edad');
}

// Argumentos posicionales opcionales de verdad sin valor por defecto.
// Los enmarcaremos entre [] e indicaremos String?, int? ...
// En este caso, si solo queremos indicar la edad, podemos indicar null para el nombre,
// pero tenemos que indicar el null a la fuerza.
void saludar4(String mensaje, [String? nombre, int? edad]) {
  print('$mensaje $nombre - $edad');
}

//! Argumentos por nombre
// Ponemos todos los argumentos entre llaves e indicamos que son opcionales usando ?
// o damos un valor por defecto.
// Es buena práctica indicar los argumentos por nombre ordenados alfabéticamente.
void saludar5({
  String? mensaje,
  String? nombre,
  int veces = 10,
}) {
  print('Saludar5: $mensaje $nombre - $veces');
}

// Si necesitamos que uno de los argumentos por nombre me venga obligatoriamente, usaremos
// la palabra reservada required (nuevo en Dart 2.12)
void saludar6({
  String? mensaje,
  required String nombre,
  int veces = 10,
}) {
  print('Saludar5: $mensaje $nombre - $veces');
}

//! Se puede hacer una composición entre argumentos posicional y argumentos por nombre.
// Queremos que siempre nos envíen mensaje, pero no queremos usar required.
void saludar7(String mensaje, {required String nombre, int veces = 10}) {
  print('Saludar5: $mensaje $nombre - $veces');
}

void main(List<String> args) {
  // Hay 2 tipos de argumentos que se pueden mandar a las funciones:
  // Posicionales: Como el que tiene la función saludar.
  //               Por defecto es obligatorio informarlos (se pueden hacer que sean opcionales)
  // Con nombre: Se identifican dentro de la función con llaves.
  //             Por defecto son opcionales (se puede hacer que sean obligatorios)
  //             y si no se informan tendrán el valor null.
  //      Ejemplo: void saludar({con_nombre}) {}
  saludar('Hola');

  // Argumento posicional que puede tener un valor String o null.
  // No es opcional de verdad.
  saludar2(null);

  // El segundo argumento posicional es opcional de verdad.
  saludar3('Hola');
  saludar3('Hola', 'José Manuel');
  saludar3('Hola', 'José Manuel', 45);

  saludar4('Hola', null, 45);

  saludar5();

  // Pulsar Cmd+. y aparecerán los argumentos por nombre requeridos
  saludar6(veces: 20, nombre: 'Adriana');

  // Primer argumento posicional. Es obligatorio
  // Segundo y tercer argumentos son por nombre, pero veces es opcional y nombre es requerido.
  saludar7('Saludos', veces: 20, nombre: 'Adriana');
}
