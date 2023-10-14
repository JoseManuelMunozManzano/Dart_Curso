class MiServicio {
  String url = 'https://abc';
  String key = 'ABC123';

  // Paso 2. Propiedad estática privada.
  // Indicamos final en vez de const porque no queremos que se modifique a
  // lo que apunta, pero si sus valores.
  // Esta propiedad regresa una instancia de MiServicio y es la que va a mantener
  // en memoria la instancia de mi clase.
  static final MiServicio _singleton = new MiServicio._internal();

  // Paso 3. Constructor factory
  // Su objetivo es regresar la instancia creada en singleton.
  // La primera vez que se le llame la creará y las siguientes veces retornará la misma instancia.
  factory MiServicio() {
    return _singleton;
  }

  // Paso 1. Constructor con nombre privado (por usar el guión bajo)
  // Solo puedo acceder a el dentro de la clase.
  // Su misión es generar una instancia.
  MiServicio._internal();
}
