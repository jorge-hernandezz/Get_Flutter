import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarea_get/controllers/computadora_controller.dart';
import 'package:tarea_get/models/computadora_model.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final computadoraContoller = Get.put(ComputadoraController());
    //final computadoraContoller = Get.find<ComputadoraController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Computadoras"),
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        computadoraContoller.pc1();
                      },
                      child: SizedBox(
                        width: 170,
                        height: 100,
                        child: Column(
                          children: [
                            Text('Ram 20 GB'),
                            Text('Grafica 1060'),
                            Text('AMD'),
                            Text('Cylon'),
                            Text('Mouse')
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        computadoraContoller.pc2();
                      },
                      child: SizedBox(
                        width: 170,
                        height: 100,
                        child: Column(
                          children: [
                            Text('Ram 50 GB'),
                            Text('Grafica 3090 ti'),
                            Text('INtel'),
                            Text('Aurus'),
                            Text('Mouse'),
                            Text('Teclado')
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),
                  Text('Computadora Seleccionada'),
                  Divider(),
                  ListTile(
                    title: Text(
                        'Ram: ${computadoraContoller.computadora.value.cantidadRam}'),
                  ),
                  ListTile(
                    title: Text(
                        'Grafica: ${computadoraContoller.computadora.value.grafica}'),
                  ),
                  ListTile(
                    title: Text(
                        'Procesador: ${computadoraContoller.computadora.value.procesador}'),
                  ),
                  ListTile(
                    title: Text(
                        'Voltaje Fuente poder: ${computadoraContoller.computadora.value.fuentePoder}'),
                  ),
                  Divider(),
                  ...computadoraContoller.computadora.value.perifericos.map(
                    (e) => ListTile(
                      title: Text(e),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Get.toNamed(
                'pagina2',
              )),
    );
  }
}
