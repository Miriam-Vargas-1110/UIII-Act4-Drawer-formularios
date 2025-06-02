import 'package:flutter/material.dart';

class DetailsCliente extends StatelessWidget {
  final int id;
  final String nombres;
  final String apellidos;
  final String direccion;
  final String telefono;
  final String ciudad;
  final String estado;
  final String correo;
  final String codigop;

  const DetailsCliente({
    Key? key,
    required this.id,
    required this.nombres,
    required this.apellidos,
    required this.direccion,
    required this.telefono,
    required this.ciudad,
    required this.estado,
    required this.correo,
    required this.codigop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Colors.white;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detalles del Cliente"),
        backgroundColor: Color.fromARGB(255, 60, 122, 255),
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
            _buildTile("ID Cliente", id.toString()),
            _buildTile("Nombres", nombres),
            _buildTile("Apellidos", apellidos),
            _buildTile("Dirección", direccion),
            _buildTile("Teléfono", telefono),
            _buildTile("Ciudad", ciudad),
            _buildTile("Estado", estado),
            _buildTile("Correo Electrónico", correo),
            _buildTile("Código Postal", codigop),
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
        trailing: const Icon(Icons.person_pin_circle, color: Colors.blueAccent),
      ),
    );
  }
}
