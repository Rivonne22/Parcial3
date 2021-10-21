import 'package:flutter/material.dart';

class Horarios extends StatefulWidget {
  const Horarios({Key? key}) : super(key: key);

  @override
  State<Horarios> createState() => _HorariosState();
}

class _HorariosState extends State<Horarios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                label: Text("Fecha"),
              ),
            ),
          )),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: TextFormField(
              maxLines: 1,
              decoration: const InputDecoration(
                label: Text("Día"),
              ),
            ),
          )),
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
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
                    'GUARDAR INFORMACIÓN',
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
