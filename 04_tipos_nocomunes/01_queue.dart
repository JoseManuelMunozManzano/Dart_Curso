import 'dart:collection';

main() {
  // Muy útil cuando tenemos una secuencia de valores y tenemos que procesar algo uno después de otro.
  // Es parecido a una lista, pero se utiliza de manera secuencial.
  Queue<int> cola = new Queue();

  cola.addAll([10, 20, 30, 40, 50]);

  // Asignamos a i el índice que nos va a permitir barrer cada una de las posiciones que se encuentran en la cola.
  Iterator i = cola.iterator;

  while (i.moveNext()) {
    print(i.current);
  }

  // El Queue no es muy utilizado porque la gente suele utilizar el ciclo for para realizar barridos de elementos
  // de manera secuencial, pero es muy eficiente.
}
