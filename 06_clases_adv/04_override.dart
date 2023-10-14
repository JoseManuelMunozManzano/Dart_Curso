class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}

class Cliente extends Persona {
  String? direccion;
  List ordenes = [];

  Cliente(int edadActual, String nombreActual)
      : super(nombreActual, edadActual);

  // Al sobreescribir un método que tiene su clase padre, es muy buena práctica
  // colocar el decorador @override
  // Es más fácil de ver para otros desarrolladores que estamos sobreescribiendo
  // ese método.
  //
  // Es posible que en un futuro la palabra @override sea obligatoria. Por ahora
  // es opcional.
  @override
  void imprimirNombre() {
    // Si queremos ejecutar imprimirNombre del padre
    super.imprimirNombre();

    print('Cliente: $nombre ($edad)');
  }
}

main() {
  final adri = new Cliente(30, 'Adriana');

  adri.imprimirNombre();
}
