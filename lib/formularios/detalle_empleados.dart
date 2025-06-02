import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final int idempleado;
  final String nombre;
  final String apellidos;
  final String numero;
  final String cargo;
  final double salario;
  final String horario;

  const Details({
    Key? key,
    required this.idempleado,
    required this.nombre,
    required this.apellidos,
    required this.numero,
    required this.cargo,
    required this.salario,
    required this.horario,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backgroundColor = const Color.fromARGB(255, 255, 255, 255);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detalles del Empleado"),
        backgroundColor: const Color.fromARGB(255, 60, 122, 255),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: backgroundColor,
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            _buildTile("ID Empleado", idempleado.toString()),
            _buildTile("Nombre", nombre),
            _buildTile("Apellidos", apellidos),
            _buildTile("Número", numero),
            _buildTile("Cargo", cargo),
            _buildTile("Salario", "\$${salario.toStringAsFixed(2)}"),
            _buildTile("Horario", horario),
          ],
        ),
      ),
    );
  }

  Widget _buildTile(String title, String subtitle) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        tileColor: Colors.white,
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.info_outline, color: Colors.deepPurple),
      ),
    );
  }
}