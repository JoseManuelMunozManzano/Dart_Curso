main() {
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    // Simular un error
    // Indicamos el if para que llegue al return. Sin el no llegaría y
    // muestra en tiempo de desarrollo un warning.
    if (1 == 1) {
      throw 'Auxilio!, explotó esta cosa';
    }

    return 'Retorno del Future'; // Resolución
  });

  // Controlando exepciones con catchError.
  // Es importante que los Futures tengan el manejo de excepciones siempre que exista
  // una remota posibilidad de error.
  timeout.then(print).catchError((error) => print(error));

  print('Fin del main');
}
