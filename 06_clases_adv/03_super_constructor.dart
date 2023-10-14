class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre, Edad: $edad');
}

// Cuando creamos una instancia de Cliente, implicitamente estamos llamando
// al constructor de Persona, pero se le están pasando cero argumentos, cuando
// realmente necesita dos.
class Cliente extends Persona {
  String? direccion;
  List ordenes = [];

  // Para resolver el problema creamos un constructor y con el operador :
  // ejecutamos el proceso ANTES de que se cree la instancia.
  // De esta forma, al crear la instancia de Cliente también se creará
  // una instancia de Persona.
  Cliente(int edadActual, String nombreActual)
      : super(nombreActual, edadActual);
}

main() {
  final adri = new Cliente(30, 'Adriana');

  adri.imprimirNombre();
}
