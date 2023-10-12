main() {
  var a = 10;
  final b = 10;
  const c = 10;

  // Diferencias entre var, final y const
  // Se puede cambiar el valor de una variable declarada con var tras su inicialización, pero no con final o const.
  a = 20;

  // La diferencia entre final y const es:
  // Usaremos const cuando jamás vayamos a cambiar el valor ni los valores del objeto de la variable.
  // const crea el espacio en memoria en tiempo de compilación.
  //
  // Usaremos final cuando sepamos que no vamos a cambiar el valor de una variable pero si pueden cambiar
  // los valores del objeto de la variable.
  // Es aconsejable usarla sobre const porque es más ligera en memoria.
  // Ejemplo para ver la diferencia.
  final personasFinal = ['Juan', 'Pedro', 'Fernando'];
  const personasConst = ['Juan', 'Pedro', 'Fernando'];

  // Usando final podemos adicionar personas
  personasFinal.add('Maria');
  print(personasFinal);

  // Pero no podemos cambiar su valor
  //personasFinal = ['Pepe'];

  // Usando const no podemos adicionar personas. No da error en tiempo de compilación, pero falla en tiempo
  // de ejecución.
  //personasConst.add('Maria');
  //print(personasConst);

  // Indicar el tipo de variable
  final double b2 = 10;
  const double c2 = 10;

  // Forma 'rara' de definir const
  List<String> personasConst2 = const ['Juan', 'Pedro', 'Fernando'];

  // Esto es redundante y se ve como una mala práctica
  const List<String> personasConst3 = const ['Juan', 'Pedro', 'Fernando'];

  // Desde la versión 2.12 de Dart tenemos también late
  // Indica que vamos a declarar una variable sin inicializar, pero que cuando se utilice tendrá un valor.
  // En este ejemplo se puede ver la diferencia entre final y late final.
  // late se usa mucho en clases.
  final double z;
  late final double x;

  if (c == 10) {
    z = 20;
  }
  // final. Este print da error porque puede que z no se haya inicializado (si no pasa por el if)
  // Error en tiempo de compilación.
  // print(z);

  if (c == 10) {
    x = 20;
  }

  // late final. Esto funciona porque hemos indicado que x va a tener un valor así que supone que
  // lo tendrá.
  // Si no lo tiene fallará en tiempo de ejecución.
  print(x);
}
