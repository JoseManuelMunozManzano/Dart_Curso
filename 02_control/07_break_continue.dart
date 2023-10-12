main() {
  // continue: vuelve a ejecutar la condición del ciclo.
  //    Lo que venga detrás del continue no se ejecuta.
  // break: sale del ciclo.
  //    Lo que venga detrás del break no se ejecuta.
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }

    print(i);

    if (i == 2) {
      break;
    }
  }
}
