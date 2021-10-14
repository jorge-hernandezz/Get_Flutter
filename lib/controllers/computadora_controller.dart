import 'package:get/get.dart';
import 'package:tarea_get/models/computadora_model.dart';

class ComputadoraController extends GetxController {
  //Observables

  var computadora = new Computadora().obs;

  //Metodos del controlador

  void pc1() {
    this.computadora.value = Computadora(
        cantidadRam: 20,
        grafica: "1060",
        procesador: "AMD",
        perifericos: ["Tecaldo"],
        fuentePoder: 50);
  }

  void pc2() {
    this.computadora.value = Computadora(
        cantidadRam: 50,
        grafica: "3090 ti",
        procesador: "Intel",
        perifericos: ["Tecaldo", "Mouse"],
        fuentePoder: 500);
  }

  void aumentarRam(int ram) {
    this.computadora.update((val) {
      val!.cantidadRam = ram;
    });
  }

  void comprarPerifericos(String periferico) {
    this.computadora.update((val) {
      val!.perifericos = [...val.perifericos, periferico];
    });
  }
}
