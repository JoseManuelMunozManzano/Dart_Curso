import 'dart:async';

main() {
  // Un stream es un flujo de información (como si fuera un río)
  // Es parecido a los observables de las extensiones reactivas.
  //
  // Los streams son asíncronos, pero a diferencia del Future, tenemos
  // que definir que va a hacer el stream cuando reciba la data, antes
  // de mandar la información.

  // Definición del stream
  final streamController = StreamController();

  // Cómo se va a trabajar el stream (sin ejecutar nada)
  //
  // Usando stream hacemos referencia al flujo de información.
  // El .listen es muy parecido al subscribe de los observables.
  // Necesitamos indicar una función que se ejecutará cuando
  // recibimos un valor. La ejecución es asíncrona (nuevo hilo de ejecución).
  //
  // El manejo de los errores tiene que estar previamente definido en el
  // StreamController. Se usa el argumento de nombre onError
  //
  // Para cancelar el stream cuando se recibe un error se usa el argumento
  // de nombre cancelOnError y se indica a true (por defecto es false)
  //
  // Cuando ya sé que no voy a mandar más información (sink.close()) puedo
  // especificar una función en el argumento de nombre onDone.
  // Si cancelOnError está a true y tenemos un error, onDone NO se ejecuta.
  streamController.stream.listen(
    (data) => print('Despegando! $data'),
    onError: (err) => print('Error $err'),
    onDone: () => print('Misión completada!'),
    cancelOnError: false, //true,
  );

  // Poniendo información al stream, al "inicio del río"
  // sink sirve para agregar elementos, la punta de entrada del stream.
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

  // Si ahora intentamos mandar otra información da error sin llegar a
  // ejecutar absolutamente nada (ni lo que estaba correcto arriba)
  // streamController.sink.add('Apollo 16');

  print('Fin del main');
}
