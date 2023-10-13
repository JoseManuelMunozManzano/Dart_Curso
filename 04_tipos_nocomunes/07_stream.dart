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
  streamController.stream.listen((data) {
    print('Despegando! $data');
  });

  // Poniendo información al stream, al "inicio del río"
  // sink sirve para agregar elementos, la punta de entrada del stream.
  streamController.sink.add('Apollo 11');

  print('Fin del main');
}
