import 'clases/location.dart';

main() {
  //? Sin constructor constante
  final sanFranscisco1 = new Location(17.1213, 39.8000);
  final sanFranscisco2 = new Location(17.1213, 39.8001);
  final sanFranscisco3 = new Location(17.1213, 39.8001);

  print(sanFranscisco1 == sanFranscisco2); // false
  print(sanFranscisco2 == sanFranscisco3); // false

  //? Con constructor constante

  // Declarando las variables como final, todo funciona igual que un constructor no constante.
  final sanFransciscoC1 = new LocationConst(17.1213, 39.8000);
  final sanFransciscoC2 = new LocationConst(17.1213, 39.8001);
  final sanFransciscoC3 = new LocationConst(17.1213, 39.8001);

  print(sanFransciscoC1 == sanFransciscoC2); // false
  print(sanFransciscoC2 == sanFransciscoC3); // false

  // Declaramos ahora variables como constantes.
  // Su inicialización es distinta, hay que usar const en vez de new.
  const sanFransciscoC4 = const LocationConst(17.1213, 39.8000);
  const sanFransciscoC5 = const LocationConst(17.1213, 39.8001);
  const sanFransciscoC6 = const LocationConst(17.1213, 39.8001);

  print(sanFransciscoC4 == sanFransciscoC5); // false
  // Es true porque, al tener los mismos valores y ser constructor constante,
  // apuntan a la misma dirección de memoria.
  print(sanFransciscoC5 == sanFransciscoC6); // true
}
