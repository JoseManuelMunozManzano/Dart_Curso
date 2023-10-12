// main puede devolver void, int, ...
// Lo normal es devolver un void en el main.
int main() {
  var mensaje = saludar2();

  print(mensaje);

  // A quien sea que ejecute mi programa Dart, le estamos devolviendo un valor de retorno 100
  return 100;
}

// Se indica el tipo del valor del retorno.
// Si no hay un return explícito y no se indica tipo de dato devuelto, se devuelve null.
// Si no se indica void, el programador puede asignar el resultado (null) a una variable y usarla,
// lo que puede llegar a dar problemas (es null)
// void no devuelve null (que es usable) sino un vacío que no es usable.
// Por tanto, es importante indicar el tipo de dato que se devuelve.
void saludar() {
  print('Hola José Manuel');
  print('Hola Adriana');
}

String saludar2() {
  return 'Hola José Manuel';
}
