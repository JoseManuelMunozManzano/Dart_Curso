import 'package:http/http.dart' as http;

import 'package:ejercicio_http/classes/pais.dart';

void getPais() {
  final url = Uri.parse('https://restcountries.com/v3.1/name/colombia');
  http.get(url).then((res) {
    final col = paisFromJson(res.body)[0];

    print('===========================');
    print('País: ${col.name.common}');
    print('Población: ${col.population}');
    print('Fronteras:');
    col.borders?.forEach((border) => print('   $border'));
    print('Idioma: ${col.languages.spa}');
    print('Latitud: ${col.latlng[0]}');
    print('Longitud: ${col.latlng[1]}');
    print('Moneda: ${col.currencies.cop.name}');
    print('Bandera: ${col.flags.svg}');
    print('===========================');
  }).catchError((error) => print(error));
}
