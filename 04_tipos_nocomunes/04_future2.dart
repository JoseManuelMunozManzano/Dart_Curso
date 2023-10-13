import 'dart:io';

main() {
  // Para saber el path donde me encuentro se usa la clase Directory, que se encarga de manejar
  // la información de directorios.
  // Queremos que File apunte a assets/personas.txt para que tenga toda la información de ese
  // archivo.

  // OSX y Linux
  File file = new File(
      Directory.current.path + '/04_tipos_nocomunes/assets/personas.txt');

  // Windows con 2 backslashes
  // File file = new File(Directory.current.path + '\\04_tipos_nocomunes\\assets\\personas.txt');

  // La lectura de un archivo puede ser síncrono o asíncrono, dependiendo del método que llamemos.
  // Usualmente serán asíncronos.
  // En este caso el método readAsString devuelve un Future que resuelve un String: Future<String>
  Future<String> f = file.readAsString();

  // Aquí tendremos la data del fichero
  // f.then((data) => print(data));
  f.then(print);

  // Método readAsStringSync no devuelve un Future, es síncrono.
  // Si el fichero es sumamente grande, tardará mucho en leerlo y se bloqueará el programa,
  // por lo que será mejor usarlo con Futures.
  print('Hilo principal');
  String fSync = file.readAsStringSync();
  print(fSync);

  print('Fin del main');
}
