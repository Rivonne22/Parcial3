import 'package:app_vuelos/vistas/destinos.dart';
import 'package:flutter/material.dart';

class Clientes extends StatelessWidget {
  const Clientes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Airlines - Vuelos',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const Inicio(title: 'Airlines - Vuelos'),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: TextFormField(
              maxLines: 1,
              decoration: const InputDecoration(
                label: Text("Cedula NIT"),
              ),
            ),
          )),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: TextFormField(
              maxLines: 1,
              decoration: const InputDecoration(
                label: Text("Nombres"),
              ),
            ),
          )),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: TextFormField(
              maxLines: 1,
              decoration: const InputDecoration(
                label: Text("Apellidos"),
              ),
            ),
          )),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: TextFormField(
              maxLines: 1,
              decoration: const InputDecoration(
                label: Text("Fecha de nacimiento"),
              ),
            ),
          )),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: TextFormField(
              maxLines: 1,
              decoration: const InputDecoration(
                label: Text("Sexo"),
              ),
            ),
          )),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: TextFormField(
              maxLines: 1,
              decoration: const InputDecoration(
                label: Text("Tipo"),
              ),
            ),
          )),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: TextFormField(
              maxLines: 1,
              decoration: const InputDecoration(
                label: Text("Usuario"),
              ),
            ),
          )),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: TextFormField(
              maxLines: 1,
              decoration: const InputDecoration(
                label: Text("Reservas"),
              ),
            ),
          )),
          Expanded(
            child: ElevatedButton(
              onPressed: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Destinos()))
              },
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.deepPurple,
                  shadowColor: Colors.purpleAccent,
                  elevation: 18,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Colors.deepPurple, Colors.deepPurpleAccent]),
                    borderRadius: BorderRadius.circular(5)),
                child: Container(
                  width: 200,
                  height: 62,
                  alignment: Alignment.center,
                  child: const Text(
                    'SIGUIENTE',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
