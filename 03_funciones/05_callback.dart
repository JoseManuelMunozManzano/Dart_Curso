// Un callback es una función que se llama dentro de otra función.
// Los callbacks NO se usan mucho en Dart.
// Esta funcionalidad Dart la consigue mediante tareas asíncronas (los callbacks NO son tareas asíncronas)

// El callback es de tipo Function
void obtenerUsuario(String id, Function callback) {
  Map usuario = {
    'id': id,
    'nombre': 'José Manuel',
  };

  // Cuando se ejecute este callback, el código salta a la definición de la función anónima (abajo)
  // y hace el print
  callback(usuario);
}

main() {
  // Cuando esta función se ejecute, voy a necesitar mandarle el callback (una función como argumento)
  // Por lo general siempre suele mandarse como último argumento.
  obtenerUsuario('100', (Map persona) {
    print(persona);
  });
}
