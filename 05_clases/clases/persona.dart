class Persona {
  // Campos o propiedades.
  // Por defecto todas las propiedades y métodos de una clase son públicas.
  // Para hacer una propiedad privada, poner un guión bajo antes del nombre: _bio
  String? nombre;
  int? edad;
  String _bio = 'Hola, soy una propiedad privada';

  // Gets y Sets
  // Son métodos para simular que tenemos alguna propiedad.
  //
  // Con get devolvemos valor.
  // No tienen paréntesis y tenemos que indicar que tipo de dato devuelve,
  // porque no es conveniente dejar que Dart lo infiera.
  String get bio {
    // Aquí puede haber más cálculos.
    return _bio.toUpperCase();
  }

  // Como función de flecha
  String get bioFlecha => _bio.toUpperCase();

  // Con set establecemos valor a una propiedad.
  // Siempre retorna void de forma implícita, no hace falta indicarlo.
  set bio(String texto) {
    _bio = texto;
  }

  // Como función de flecha
  set bioFlecha(String texto) => _bio = texto;

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
