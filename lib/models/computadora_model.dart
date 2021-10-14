class Computadora {
  int? cantidadRam;
  String? grafica;
  String? procesador;
  int? fuentePoder;
  List<String> perifericos;

  Computadora(
      {this.cantidadRam,
      this.fuentePoder,
      this.grafica,
      this.procesador,
      this.perifericos = const []});
}
