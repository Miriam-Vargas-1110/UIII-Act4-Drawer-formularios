import 'package:flutter/material.dart';
import 'package:myapp/formulario/form_empleado.dart';
import 'package:myapp/formulario/form_clientes.dart';
import 'package:myapp/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/home": (context) => HomePage(),
        "/Empleado": (context) => Empleado(),
        "/Cliente": (context) => Cliente(),
      },
    );
  }
}
