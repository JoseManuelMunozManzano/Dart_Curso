// Primero importamos paquetes core de Dart, luego paquetes de
// terceros (del repositorio) y por último nuestros paquetes.
import 'package:http/http.dart' as http;

import 'package:paquetes/classes/reqres_respuesta.dart';

void getReqRespService() {
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    // Extraer y utilizar el body
    // Necesito convertirlo, usando el paquete dart:convert
    // Sabemos que un json al final es un mapa, así que aunque veamos dynamic, es un mapa.
    //
    //final body = jsonDecode(res.body);
    // print(body);
    // print('page: ${body['page']}');
    // print('per_page: ${body['per_page']}');
    // print('id del tercer elemento: ${body['data'][2]['id']}');

    final resReqResponse = reqResRespuestaFromJson(res.body);
    print('page: ${resReqResponse.page}');
    print('per_page: ${resReqResponse.perPage}');
    print('id del tercer elemento: ${resReqResponse.data[2].id}');
  });
}
