class Persona {
  // Campos o propiedades.
  // Por defecto todas las propiedades y métodos de una clase son públicas.
  // Para hacer una propiedad privada, poner un guión bajo antes del nombre: _bio
  String? nombre;
  int? edad;
  String _bio = 'Hola, soy una propiedad privada';

  // Gets y Sets
  // Constructores

  // Métodos
  // Podemos sobreescribir alguna propiedad que tenga una clase, por ejemplo: toString()
  // Puede ser una función de flecha.
  @override
  String toString() {
    return '$nombre $edad $_bio';

    // Para hacer referencia a una propiedad de la clase se usa this.
    // Muy útil si recibimos como argumento del método una variable llamada nombre,
    // para diferenciar a que "nombre" nos referimos.
    //
    // return this.nombre ?? '';
  }
}
