class Persona {
  // Campos o propiedades.
  // Por defecto todas las propiedades y métodos de una clase son públicas.
  // Para hacer una propiedad privada, poner un guión bajo antes del nombre: _bio
  String? nombre;
  int? edad;
  // El constructor cambia el valor de esta propiedad aquí inicializada.
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
  // Método que se llama cuando queremos crear una nueva instancia de esta clase.
  // Por defecto siempre existe un constructor implícito, y siempre podemos definir
  // otros constructores.
  //
  // El constructor por defecto tiene que tener el mismo nombre de la clase.
  // Este constructor ya es válido.
  //
  // Persona();
  //
  // Ejemplo de constructor con argumentos posicionales obligatorios y con más operativa.
  //
  // Persona(int edad, String nombre) {
  //   print('Constructor');

  //   this.edad = edad;
  //   this.nombre = nombre;

  //   _bio = 'Hola desde el constructor';
  // }

  // Resumiendo el código del constructor.
  // Notar que es solo para inicializar propiedades.
  // Se pueden poner los argumentos como posicionales o con nombre opcionales.
  //
  //Persona(this.edad, {this.nombre = 'María'});
  //
  // Para hacer obligatorio uno de estos parámetros por nombre, en Flutter se usa
  // el decorador @required, pero en Dart todavía no funciona.
  // Por ahora no se puede establecer un parámetro por nombre como obligatorio.
  // Solo poner valores por defecto.
  Persona({this.edad = 42, this.nombre = 'Adriana'});

  // No se puede realizar una sobrecarga de operador, es decir, no puedo crear
  // otro constructor llamado Persona con otros argumentos porque solo puede haber
  // un constructor sin nombre.
  // Lo que si se usa es crear constructores con nombre.
  // Se crean indicando el nombre de la clase, un punto y el nombre que queremos
  // darle al constructor.
  Persona.persona30(this.nombre) {
    this.edad = 30;
  }

  Persona.persona40(String nombre) {
    this.edad = 40;
    this.nombre = nombre;
  }

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
