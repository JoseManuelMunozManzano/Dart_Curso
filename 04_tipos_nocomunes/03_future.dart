main() {
  // Los Futures están basados en un 99% en las promesas de JavaScript.
  // Es una tarea asíncrona que se va a resolver en un futuro.
  //
  // Cuando el Future se resuelve, puede devolver cualquier tipo de dato.
  // Es un genérico: Future<>
  // Aunque en este caso sería Future<null> y eso no se acostumbra ponerlo.
  //
  // Los Future rompen todo el enlace secuencial que hemos tenido hasta el
  // momento en el curso.
  //
  // Son muy utilizados cuando queremos hacer peticiones HTTP, leer un archivo
  // de manera asíncrona, para que el programa siga ejecutándose y no quede
  // ocupado en el hilo principal de ejecución.
  Future timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 segundos después!');
  });

  // En este ejemplo el Future resuelve (no retorna, sino resuelve) un String.
  Future<String> timeout2 = Future.delayed(Duration(seconds: 1), () {
    print('1 segundo después!');
    return 'Retorno del Future'; // Resolución
  });

  // Cuando el Future termina, tenemos el .then
  // timeout2.then((texto) => print(texto));
  // Shortcut
  timeout2.then(print);

  print('Fin del main');
}
