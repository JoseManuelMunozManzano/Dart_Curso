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
