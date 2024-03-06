import 'package:appdelivery/presentacion/screms/counter_screams.dart';
import 'package:appdelivery/presentacion/screms/funcionesappbar.dart';
import 'package:flutter/material.dart';

void main(){
 runApp( const Myapp());

}
class Myapp extends StatelessWidget{
  const Myapp({super.key});


  
  @override
  Widget build(BuildContext context) {


    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: funcionesappbar()



    );
  }
  
}