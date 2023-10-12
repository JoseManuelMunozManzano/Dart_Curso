/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

void escribir(String texto) => stdout.writeln(texto);

String leer() => stdin.readLineSync() ?? '';

void procesarUsuario(double salario) {
  escribir('=========== Usuario =============');

  escribir('¿Cúal es su nombre?');
  String nombre = leer();

  escribir('¿Qué edad tienes?');
  String edad = leer();

  escribir('¿En qué país naciste?');
  String pais = leer();

  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad': edad,
    'pais': pais
  };

  escribir('Usuario sin deducciones');
  escribir(usuario.toString());

  calculoSalario(usuario, salario);
  escribir(usuario.toString());
}

Map<String, dynamic> calculoSalario(
    Map<String, dynamic> usuario, double salario) {
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;

  usuario['salario'] = salario;
  usuario['deducciones'] = deducciones;
  usuario['salarioNeto'] = salarioNeto;

  return usuario;
}

main() {
  List<double> salarios = [1500, 1800];

  for (double salario in salarios) {
    procesarUsuario(salario);
  }
}
