/**
 * Un operador es un símbolo que le dice al compilador
 * que debe de realizar una tarea matemática, relacional
 * o lógica, y debe producir un resultado
 */
main() {
  // Operador +
  int a = 10 + 5;

  // Operador -
  a = 20 - 10;

  // Operador *
  a = 10 * 2;

  // Operador división
  double b = 10 / 2; // Resultado 5.0

  // Operador resto de la división %
  b = 10 % 3; // Resultado 1.0

  // Operador negación -expr
  // Usado para cambiar el valor de la expresión
  b = -b;

  // Resultado entero de una división con ~/
  int c = 10 ~/ 3; // Resultado 3

  // Operador incremental en 1 ++
  int d = 1;
  d++;

  // Operador decremental en 1 --
  d--;

  // Operador suma a la misma variable +=
  d += 3;

  // Operador resta a la misma variable -=
  d -= 3;

  // Operador multiplicación a la misma variable +=
  d *= 3;

  // Operador división a la misma variable +=
  b /= 3;
}
