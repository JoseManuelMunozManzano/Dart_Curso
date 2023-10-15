// Primero importamos paquetes core de Dart, luego paquetes de
// terceros (del repositorio) y por último nuestros paquetes.
//
// Esto se hace por motivos de eficiencia, ya que si, por ejemplo, en
// el paquete convert ya estuviera importado el paquete http, nuestro
// segundo import no lo haría.
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:paquetes/paquetes.dart' as paquetes;

void main(List<String> arguments) {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    print(res);
  });
}
