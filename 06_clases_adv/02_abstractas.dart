// Problema que se resuelve con una clase abstracta.
// Puede que no queramos poder crear instancias de la clase Vehiculo, porque
// Vehiculo debería ser solo el cascarón que nos sirve a nosotros para extender
// otras clases.
// Ese es el uso de una clase abstracta.
abstract class Vehiculo {
  bool encendido = false;

  void encender() {
    encendido = true;
    print('Vehículo encendido');
  }

  void apagar() {
    encendido = false;
    print('Vehículo apagado');
  }

  // No es necesario definir lo que hace el método. Aquí se puede indicar que el método
  // existe, y es la clase que extiende a esta la que implementa su funcionamiento.
  bool revisarMotor();
}

class Carro extends Vehiculo {
  int kilometraje = 0;

  // Obtenido con Cmd+.
  // Se informa automáticamente el operador @override.
  // No es obligatorio, pero es recomendable, cuando se sobreescriben
  // métodos, indicarlo.
  @override
  bool revisarMotor() {
    print('Motor OK!!');
    return true;
  }
}

main() {
  // Las clases abstractas NO pueden instanciarse.
  // Esto da error.
  //
  // final ford = new Vehiculo();
  //
  // Y esto es correcto:
  final ford = new Carro();

  ford.encender();
  ford.apagar();
  ford.revisarMotor();
}
