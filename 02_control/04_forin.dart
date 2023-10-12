main() {
  List<String> listado = ['Batman', 'Superman', 'Wonder Woman'];

  // for (int i = 0; i < listado.length; i++) {
  //   print(listado[i]);
  // }

  // Con for in
  // Código más fácil de leer y con menos procesamiento.
  for (String nombre in listado) {
    print(nombre);
  }
}
