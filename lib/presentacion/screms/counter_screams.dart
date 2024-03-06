import 'package:flutter/material.dart';

class CounterScrem extends StatefulWidget {
  const CounterScrem({Key? key}) : super(key: key);

  @override
  State<CounterScrem> createState() => _CounterScremState();
}

class _CounterScremState extends State<CounterScrem> {
  int clickcounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counterscreams')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickcounter',
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
             Text(
               clickcounter == 1 ? 'Hola' : 'NClick',
              style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickcounter++; // Incrementa el contador cuando se presiona el botón
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  } }