import 'dart:async';

main() {
  // Definición del stream
  //
  // Es importante indicar el tipado del stream para evitar errores en
  // tiempo de ejecución.
  //
  // Indicando tipado de un StreamController de forma típica (muy largo)
  // final StreamController<String> streamController = new StreamController();
  //
  // Segunda forma de indicar el tipado, en la parte derecha de la asignación.
  //
  // final streamController = new StreamController<String>();

  // Hay dos tipos de StreamController
  // 1 - De una sola subscripción: tal y como está definido en este ejemplo.
  //      No puede definirse otro listen sobre la misma variable streamController.
  //      Solo un listen puede estar escuchando este stream. En caso contrario
  //      hay un error.
  // 2 - De múltiples subscripciones
  //      Usando el método broadcast se transforma un StreamController de una sola
  //      subscripción a uno de múltiples subscripciones.
  final streamController = new StreamController<String>.broadcast();

  // Cómo se va a trabajar el stream (sin ejecutar nada)
  streamController.stream.listen(
    (data) => print('Despegando! $data'),
    onError: (err) => print('Error $err'),
    onDone: () => print('Misión completada!'),
    cancelOnError: false, //true,
  );

  // Mismo stream en otra parte de la aplicación
  streamController.stream.listen(
    (data) => print('Despegando Stream2! $data'),
    onError: (err) => print('Error Stream2 $err'),
    onDone: () => print('Misión completada Stream2!'),
    cancelOnError: false, //true,
  );

  // Poniendo información al stream, al "inicio del río"
  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  // Ejecutar un error
  streamController.sink.addError('Houston, tenemos un problema!');
  // Si hemos indicado el argumento de nombre cancelOnError a true
  // no llegamos aquí.
  streamController.sink.add('Apollo 14');
  streamController.sink.add('Apollo 15');

  // Hay que cancelar el stream cuando sabemos que ya no vamos a recibir
  // más información (en un logout...)
  streamController.sink.close();

  print('Fin del main');
}
