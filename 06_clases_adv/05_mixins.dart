// Un mixin sirve para darle las propiedades y los métodos que tiene una clase a otra.
// Prácticamente cualquier clase puede ser un mixin (hasta Dart 3).
//
// Características:
// - Los mixins NO pueden ser instanciados (diferencia con extends)
// - Los mixins NO pueden tener constructores (diferencia con clases abstractas)
//
// El superpoder de los mixin es que permite definir agrupar funcionalidades genéricas
// que pueden ser utilizadas por más de una clase aún cuando no haya una relación directa
// entre ellas, y así evitar la complejidad de la herencia.
//
// Otra forma de entenderlo:
// Un mixin es una manera de reutilizar código, sin la necesidad de instanciar, heredar o
// implementar una clase, solo es reutilizar una parte de código que sabemos que siempre va
// a funcionar de esa manera.
mixin Logger {
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

// Toda clase puede ser utilizada como un mixin (en Dart 3 ya no!!)
//class Logger2 {
mixin Logger2 {
  void imprimir2(String texto) {
    final hoy = DateTime.now();
    print('$hoy :::: $texto');
  }
}

// Los mixins se usan con la palabra with
// Ahora Astro va a tener el método imprimir
abstract class Astro with Logger {
  String? nombre;

  Astro() {
    imprimir('-- Init del Astro --');
  }

  void existo() {
    imprimir('-- Soy un ser celestial y existo --');
  }
}

class Asteroide extends Astro {
  String? nombre;

  Asteroide(this.nombre) {
    // Como extiendo de Astro y el Astro tiene Logger, esto debe funcionar
    imprimir('Soy $nombre');
  }
}

// Si hay extends y with, primero van los extends y luego los with.
class Asteroide2 extends Astro with Logger, Logger2 {
  String? nombre;

  Asteroide2(this.nombre) {
    imprimir2('Soy $nombre');
  }
}

main() {
  final ceres = new Asteroide('Ceres');
  final europa = new Asteroide2('Europa');
}
