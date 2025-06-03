import 'package:flutter/material.dart';
import 'package:myapp/formulario/detalle_empleados.dart';

class Empleado extends StatefulWidget {
  const Empleado({Key? key}) : super(key: key);

  @override
  State<Empleado> createState() => _MyFormState();
}

class _MyFormState extends State<Empleado> {
  final _idController = TextEditingController();
  final _nombreController = TextEditingController();
  final _apellidosController = TextEditingController();
  final _numeroController = TextEditingController();
  final _cargoController = TextEditingController();
  final _salarioController = TextEditingController();
  final _horarioController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _nombreController.dispose();
    _apellidosController.dispose();
    _numeroController.dispose();
    _cargoController.dispose();
    _salarioController.dispose();
    _horarioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final azulPrincipal = Colors.blue.shade300;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: azulPrincipal,
        title: const Text("Formulario de Empleado"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _idController,
              fieldName: "ID Empleado",
              myIcon: Icons.badge,
              prefixIconColor: azulPrincipal,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _nombreController,
              fieldName: "Nombre",
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
              myController: _numeroController,
              fieldName: "Número",
              myIcon: Icons.phone,
              prefixIconColor: azulPrincipal,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _cargoController,
              fieldName: "Cargo",
              myIcon: Icons.work,
              prefixIconColor: azulPrincipal,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _salarioController,
              fieldName: "Salario",
              myIcon: Icons.attach_money,
              prefixIconColor: azulPrincipal,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _horarioController,
              fieldName: "Horario",
              myIcon: Icons.schedule,
              prefixIconColor: azulPrincipal,
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
              return Details(
                idempleado: int.tryParse(_idController.text) ?? 0,
                nombre: _nombreController.text,
                apellidos: _apellidosController.text,
                numero: _numeroController.text,
                cargo: _cargoController.text,
                salario: double.tryParse(_salarioController.text) ?? 0.0,
                horario: _horarioController.text,
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

// Widget reutilizable
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