main() {
  // Números
  int a = 10;
  double b = 5.5;

  // Null Safety
  // No se el valor todavía o puede ser null. Usar ?
  int? c;
  print(c);

  // Nombres de variables correctos
  int _a = 30;
  double $b = 40;

  print(_a + $b); // int + double --> double
}
