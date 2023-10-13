// Una enumeración es como una clase.
// Facilitan mucho la lectura de nuestro código.
enum Audio {
  bajo,
  medio,
  alto,
}

main() {
  Audio volumen = Audio.alto;

  switch (volumen) {
    case Audio.bajo:
      print('Volumen bajo');
      break;
    case Audio.medio:
      print('Volumen medio');
      break;
    case Audio.alto:
      print('Volumen alto');
      break;
  }
}
