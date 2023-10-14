import 'clases/cuadrado.dart';

main() {
  final cuadrado = new Cuadrado(10);

  // Esto da error.
  // lado no puede ser usado como una propiedad setter porque está marcado como final.
  //
  // cuadrado.lado = 20;

  print(cuadrado.area);
}
