import 'package:flutter/material.dart';
import 'package:myapp/formulario/detalle_cliente.dart'; // Asegúrate de tener este archivo creado

class Cliente extends StatefulWidget {
  const Cliente({Key? key}) : super(key: key);

  @override
  State<Cliente> createState() => _ClienteFormState();
}

class _ClienteFormState extends State<Cliente> {
  final _idController = TextEditingController();
  final _nombresController = TextEditingController();
  final _apellidosController = TextEditingController();
  final _direccionController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _ciudadController = TextEditingController();
  final _estadoController = TextEditingController();
  final _correoController = TextEditingController();
  final _codigoPostalController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _nombresController.dispose();
    _apellidosController.dispose();
    _direccionController.dispose();
    _telefonoController.dispose();
    _ciudadController.dispose();
    _estadoController.dispose();
    _correoController.dispose();
    _codigoPostalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final azulPrincipal = Colors.blue.shade300;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: azulPrincipal,
        title: const Text("Formulario de Cliente"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _idController,
              fieldName: "ID Cliente",
              myIcon: Icons.badge,
              prefixIconColor: azulPrincipal,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _nombresController,
              fieldName: "Nombres",
              myIcon: Icons.person,
              prefixIconColor: azulPrincipal,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _apellidosController,
              fieldName: "Apellidos",
              myIcon: Icons.person_outline,
              prefixIconColor: azulPrincipal,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _direccionController,
              fieldName: "Dirección",
              myIcon: Icons.home,
              prefixIconColor: azulPrincipal,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _telefonoController,
              fieldName: "Número de Teléfono",
              myIcon: Icons.phone,
              prefixIconColor: azulPrincipal,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _ciudadController,
              fieldName: "Ciudad",
              myIcon: Icons.location_city,
              prefixIconColor: azulPrincipal,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _estadoController,
              fieldName: "Estado",
              myIcon: Icons.map,
              prefixIconColor: azulPrincipal,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _correoController,
              fieldName: "Correo Electrónico",
              myIcon: Icons.email,
              prefixIconColor: azulPrincipal,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _codigoPostalController,
              fieldName: "Código Postal",
              myIcon: Icons.local_post_office,
              prefixIconColor: azulPrincipal,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20.0),
            myBtn(context, azulPrincipal),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context, Color color) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(200, 50),
        side: BorderSide(color: color),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailsCliente(
                id: int.tryParse(_idController.text) ?? 0,
                nombres: _nombresController.text,
                apellidos: _apellidosController.text,
                direccion: _direccionController.text,
                telefono: _telefonoController.text,
                ciudad: _ciudadController.text,
                estado: _estadoController.text,
                correo: _correoController.text,
                codigop: _codigoPostalController.text,
              );
            },
          ),
        );
      },
      child: Text(
        "ENVIAR",
        style: TextStyle(fontWeight: FontWeight.bold, color: color),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: prefixIconColor),
        ),
        labelStyle: TextStyle(color: prefixIconColor),
      ),
    );
  }
}
