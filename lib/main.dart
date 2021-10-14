import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tarea_get/pages/pagina1.dart';
import 'package:tarea_get/pages/pagina2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Manejador de estados',
      initialRoute: '/pagina1',
      getPages: [
        GetPage(name: '/pagina1', page: () => Pagina1()),
        GetPage(name: '/pagina2', page: () => Pagina2())
      ],
    );
  }
}
