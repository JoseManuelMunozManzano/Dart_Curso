import 'clases/persona.dart';

main() {
  // Instancia de la clase
  // La palabra new es opcional pero se recomienda indicarla.
  // En vez de indicar el tipo Persona en la parte izquierda, se puede indicar
  // final si no va a cambiar a lo que apunta persona.
  final persona = new Persona();

  // Optimización para indicar valores de las propiedades de la clase.
  persona
    ..nombre = 'José Manuel'
    ..edad = 44
    ..bio = 'Nació en España';

  // Una vez hecho el override al toString() en la clase Persona realmente no hace falta indicarlo aquí
  // porque está implícito.
  print(persona);
}
