class Rectangulo {
  int? base;
  int? altura;
  int? area;
  String? tipo; // cuadrado base = altura, rectangulo base != altura

  // Un factory es un patrón creacional.
  // Al añadir factory estamos indicando que tenemos que devolver algo de tipo Rectangulo,
  // es decir, una instancia.
  //
  // Se usa para realizar cálculos y en función del resultado llamar al constructor adecuado
  // para devolver la instancia correcta.
  //
  // Nunca crea una instancia por si solo. Retorna la creación de una nueva instancia o una
  // instancia que ya exista (lo veremos en el patrón Singleton)
  factory Rectangulo(int base, int altura) {
    if (base == altura) {
      return Rectangulo.cuadrado(base);
    } else {
      return Rectangulo.rectangulo(base, altura);
    }
  }

  Rectangulo.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }

  Rectangulo.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'Rectángulo';
  }

  @override
  String toString() {
    return {'base': base, 'altura': altura, 'area': area, 'tipo': tipo}
        .toString();
  }
}

main() {
  final figura = new Rectangulo(10, 10);
  final figura2 = new Rectangulo(10, 15);

  print(figura);
  print(figura2);
}
