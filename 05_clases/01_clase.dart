class Persona {
  // Campos o propiedades
  String? nombre;
  int? edad;
  String? bio;

  // Gets y Sets
  // Constructores

  // Métodos
  // Podemos sobreescribir alguna propiedad que tenga una clase, por ejemplo: toString()
  // Puede ser una función de flecha.
  @override
  String toString() {
    return '$nombre $edad $bio';

    // Para hacer referencia a una propiedad de la clase se usa this.
    // Muy útil si recibimos como argumento del método una variable llamada nombre,
    // para diferenciar a que "nombre" nos referimos.
    //
    // return this.nombre ?? '';
  }
}

main() {
  // Instancia de la clase
  // La palabra new es opcional pero se recomienda indicarla.
  // En vez de indicar el tipo Persona en la parte izquierda, se puede indicar
  // final si no va a cambiar a lo que apunta persona.
  final persona = new Persona();
  persona.nombre = 'José Manuel';
  persona.edad = 44;
  persona.bio = 'Nació en España';

  print(persona.toString());
}
