
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Formularios Tablas"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 83, 163, 209),
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: new IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
        ],
      ),

drawer: Drawer(
  child: ListView(
    children: [

    UserAccountsDrawerHeader(
      decoration: BoxDecoration(color: const Color.fromARGB(255, 116, 125, 255)),
      accountName: Text("Miriam Vargas 1110"), 
      accountEmail: Text("a.22308051281110@cbtis128.edu.mx"),
      currentAccountPicture: GestureDetector(
        child: CircleAvatar(
          radius: 130,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/Miriam-Vargas-1110/imagenes-MVC/refs/heads/main/icon.jpg'),
            ),
          ),
                ),
          ),
          InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color: Colors.pink),
                title: Text("Pagina Inicio"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/Empleado");},
                leading: Icon(Icons.person, color: Colors.black),
                title: Text("Empleados"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/Cliente");},
                leading: Icon(Icons.person, color: Colors.black),
                title: Text("Cliente"),
              ),
            ),
    ],
  ),
),
    
    );
  }
}