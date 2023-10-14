import 'clases/persona.dart';

main() {
  // Instancia de la clase
  // La palabra new es opcional pero se recomienda indicarla.
  // En vez de indicar el tipo Persona en la parte izquierda, se puede indicar
  // final si no va a cambiar a lo que apunta persona.
  //
  // Se pueden enviar argumentos para inicializar los valores de nuestro objeto.
  final persona = new Persona(edad: 44, nombre: 'José Manuel');

  // Optimización para indicar valores de las propiedades de la clase.
  // Lo normal es enviarlos en el constructor
  // persona
  //   ..nombre = 'José Manuel'
  //   ..edad = 44;
  // ..bio = 'Nació en España'; // Ya no se puede hacer porque bio es privado.

  // Una vez hecho el override al toString() en la clase Persona realmente no hace falta indicarlo aquí
  // porque está implícito.
  print(persona);

  persona.bio = 'Cambié el valor!';
  print(persona.bio);

  // Usando un constructor con nombre
  final persona2 = new Persona.persona30('Adriana');
  print(persona2);
}
