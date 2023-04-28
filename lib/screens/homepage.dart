
// ignore_for_file: avoid_print

import 'package:example/screens/tp1.dart';
import 'package:flutter/material.dart';

import 'tp2.dart';
import 'tp3.dart';
import 'tp4.dart';
import 'tp5.dart';
import 'tp6.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,title:const Text("title")),
      drawer:const Drawer(),
      body: GridView.builder(itemCount: 6,
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
        itemBuilder: (context, i) => InkWell(onTap: (){
          print('TP ${i+1}');
          switch (i) {
            case 0:
               Navigator.push(context,MaterialPageRoute(builder: (context) => const TP1()),);
              break;
             case 1:
               Navigator.push(context,MaterialPageRoute(builder: (context) => const TP2()),);
              break;
             case 2:
               Navigator.push(context,MaterialPageRoute(builder: (context) => const TP3()),);
              break;
             case 3:
               Navigator.push(context,MaterialPageRoute(builder: (context) => const TP4()),);
              break;
             case 4:
               Navigator.push(context,MaterialPageRoute(builder: (context) => const TP5()),);
              break;
             case 5:
               Navigator.push(context,MaterialPageRoute(builder: (context) => const TP6()),);
              break;
            default:
          }
          },
          child: Container(width: double.infinity,height: double.infinity,margin:const EdgeInsets.all(8),
            color:i == 0 ? Colors.amber : i == 1 ? Colors.yellow : 
                  i == 2 ? Colors.blue : i == 3 ? Colors.purpleAccent : 
                  i == 4 ? Colors.green : Colors.red,
            child: Center(child: Text('TP ${i+1}',style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 22))))))
      );
  }
}