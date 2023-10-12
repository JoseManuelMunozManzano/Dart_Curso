main() {
  // Poniendo nombres o labels a los ciclos for (o while, do while ...) podemos hacer el break
  // del ciclo que queramos.
  //
  // Sin labels, un break siempre saldrá del ciclo donde está definido.

  outerLoop:
  for (int i = 0; i < 5; i++) {
    print('Valor de i: $i');

    innerLoop:
    for (int j = 0; j < 5; j++) {
      print('Valor de j: $j');

      if (j == 2) {
        break outerLoop;
      }
    }
  }
}
