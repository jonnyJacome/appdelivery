import 'package:flutter/material.dart';

// ignore: camel_case_types
class funcionesappbar extends StatefulWidget {
  const funcionesappbar({super.key});

  @override
  State<funcionesappbar> createState() => _funcionesappbarState();
}

// ignore: camel_case_types
class _funcionesappbarState extends State<funcionesappbar> {
  int clickcounter = 0;
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Counterfunciones'),
     actions: [
IconButton(
        icon: const Icon(Icons.refresh),
        onPressed: () {
          setState(() {
          clickcounter=0; // Incrementa el contador cuando se presiona el botón
        });
        }),
     ],
       
      ),
   
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
   floatingActionButton: Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    CustomButton(
      icon: Icons.exposure_minus_1,
      onPressed: () {
        if (clickcounter == 0) return;
        clickcounter--;
        setState(() {});
      },
    ),
    const SizedBox(height: 10), // Espacio entre los botones flotantes
    CustomButton(
      icon: Icons.exposure_minus_1,
      onPressed: () {
        // Lógica para el segundo botón
      },
    ),
  ],
),
);
} 
}
class CustomButton extends StatelessWidget {
  
  final IconData icon;
  
  final VoidCallback  onPressed;
  
const CustomButton({super.key, 

  required this.icon,
  required this.onPressed,
});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed:onPressed,
      backgroundColor: const Color.fromARGB(255, 87, 51, 0), // Establece el color de fondo aquí
      child: Icon(icon),
    );
  }
}