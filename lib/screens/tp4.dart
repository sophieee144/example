import 'package:flutter/material.dart';

class TP4 extends StatefulWidget {
  const TP4({super.key});

  @override
  State<TP4> createState() => _TP4State();
}

class _TP4State extends State<TP4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('TP4'), backgroundColor: Colors.deepPurple,),
      body: Row(
        children: const [
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.black),
              )
            ),
          )
        ],
      ),
    );
  }
}