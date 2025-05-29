
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
                  child: Text(
                    "AM",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Colors.white,
                ),
          ),
        ),
    ],
  ),
),

    );
  }
}