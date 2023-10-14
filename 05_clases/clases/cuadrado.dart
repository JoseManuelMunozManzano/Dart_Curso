class Cuadrado {
  // Propiedades inmutables. Ni lado ni area se pueden modificar.
  // Tenemos que inicializarlas aquí o en el constructor,
  // ya que luego no van a poder cambiarse.
  final int lado;
  final int area;

  // Error
  // Así no funciona porque indica que no hay setters.
  // Cuadrado(int lado, int area) {
  //   this.lado = lado;
  //   this.area = area;
  // }

  // Ok!
  // Esto funciona si podemos recibir todas las propiedades finales.
  // Cuadrado(this.lado, this.area);

  // Pero no queremos inicializar el area, queremos calcularla dado el lado.
  //
  // Existe una manera de ejecutar este tipo de procedimientos en el constructor
  // al momento en que se inicializa el mismo, lo cual nos permite establecer el
  // valor a la propiedad area cuando se recibe el valor de la propiedad lado.
  Cuadrado(int lado)
      : this.lado = lado,
        this.area = lado * lado;
}
