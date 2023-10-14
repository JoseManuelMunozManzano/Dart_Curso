main() {
  // Con esta instrucción estamos creando una instancia de double,
  // y tenemos a nuestra disposición todas las propiedades y métodos
  // que la clase double posee.
  double numero = 2.1416;

  // Uso de propiedades estáticas.
  double infinito = double.infinity;

  // Usar el print sobre numero nos lleva al método .toString()
  print('$numero');

  // Si no sabemos que es la firma (sign) es cuando vamos a la documentación
  // https://api.dart.dev/stable/3.1.3/dart-core/double-class.html
  // Y en concreto: https://api.dart.dev/stable/3.1.3/dart-core/double/sign.html
  print('Firma: ${numero.sign} :: $numero');

  //? Otras propiedades y métodos
  print('isFinite: ${numero.isFinite} :: $numero');
  print('isFinite: ${infinito.isFinite} :: $infinito');

  print('abs: ${numero.abs()} :: $numero');

  print('ceil: ${numero.ceil()} :: $numero');
  print('ceilToDouble: ${numero.ceilToDouble()} :: $numero');

  print('round: ${numero.round()} :: $numero');
  print('roundToDouble: ${numero.roundToDouble()} :: $numero');

  print('clamp: ${numero.clamp(1, 3)} :: $numero');
}
