import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarea_get/controllers/computadora_controller.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final computadoraController = Get.find<ComputadoraController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina2'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(children: [
            SizedBox(
              width: double.infinity,
              child: MaterialButton(
                color: Colors.blue,
                child:
                    Text('Aumentar Ram', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  computadoraController.aumentarRam(128);
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: MaterialButton(
                color: Colors.blue,
                child: Text('Agregar periferico',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  computadoraController.comprarPerifericos("Audifonos");
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
