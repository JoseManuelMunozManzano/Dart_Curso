main() {
  // Operadores de asignación =
  int a = 10;
  // La ? indica que es una variable opcional. Es para poder usarla en el siguiente operador
  int? b;

  // Operador de asignación SOLO cuando la variable es null ??=
  // Si la variable no es null este valor 20 no se asigna. Es una instrucción de seguridad.
  b ??= 20;
  //print(b);

  // Operadores condicionales
  int c = 23;
  String resp =
      c > 25 ? 'C es mayor a 25' : 'C es menor a 25'; // Operador ternario

  // Si b es nulo usará el valor de a. Si a es nulo usará el valor 100
  // Indica un warning porque la parte izquierda (b) no es null, así que a no se llega a evaluar.
  // Si hacemos que b valga null el warning desaparece.
  // Si b y a valen null y no tenemos el ?? 100, entonces d es null pero hay que declarar d como int? d
  // b = null;
  int d = b ?? a ?? 100;
  print(d);

  // Operadores relacionales.
  // To-dos retornan un valor booleano.
  // El null NO es considerado un valor de retorno correcto de un booleano.
  /*
    > Mayor que
    < Menor que
    >= Mayor o igual que
    <= Menor o igual que

    == Revisa si dos objetos son iguales (valor y tipo)
    != Revisa si dos objetos son diferentes (valor y tipo)
  */

  String persona1 = 'José';
  String persona2 = 'Adriana';

  print(persona1 == persona2);
  print(persona1 != persona2);

  int x = 20;
  int y = 30;

  print(x > y); // false
  print(x < y); // true
  print(x >= y); // false
  print(x <= y); // true

  // Operador de tipo is
  // Negación is!
  int i = 10;
  String j = '10';

  print(i is int);
  print(j is! int);
}
