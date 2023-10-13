import 'dart:io';

main() async {
  ejemploTonto().then(print);

  String path =
      Directory.current.path + '/04_tipos_nocomunes/assets/personas.txt';

  // Ya sabemos que, de forma "natural" siempre se va a imprimir Fin del main
  // antes del contenido del archivo.
  // Para hacer que se ejecute primero el contenido del archivo se indica await,
  // para esperar a que se resuelva el Future antes de continuar.
  // Y el resultado se asigna al String texto.
  //
  // NOTA: await solo puede usarse dentro de una función que sea async.
  //       Por eso hemos colocado async en la función main
  String texto = await leerArchivo(path);
  print(texto);

  print('Fin del main');
}

// Al informar async, se transforma mi función corriente en una función que va a
// retornar a fuerza un Future, donde arriba vemos que se puede hacer el .then()
//
// Aunque parece que devuelve un String, como hemos añadido async,
// realmente devuelve un Future<String>
Future<String> ejemploTonto() async {
  return 'Ejemplo tonto';
}

// Aquí se puede o no informar el async, ya que readAsString ya devuelve por si
// mismo un Future
Future<String> leerArchivo(String path) {
  File file = new File(path);

  return file.readAsString();
}
