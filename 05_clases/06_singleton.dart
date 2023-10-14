import 'clases/mi_servicio.dart';

main() {
  // La idea de un Singleton es que distintos new MiServicio() me devuelvan
  // la misma instancia, para que en memoria solo exista una instancia de mi
  // servicio.
  // Es muy útil para manejar la información centralizada en un solo punto.

  final spotifyService1 = new MiServicio();
  spotifyService1.url = 'https://api.spotify.com';

  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'https://api.spotify.com/v2';

  print(spotifyService1 ==
      spotifyService2); // true. Apuntan al mismo espacio en memoria. Son literalmente iguales.

  print(spotifyService1.url); // Se ha sustituido la url
  print(spotifyService2.url);
}
