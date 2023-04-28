import 'package:flutter/material.dart';

class TP1 extends StatelessWidget {
  const TP1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('TP1')),
        body: const Text("hada raho tp 1",
            style: TextStyle(color: Colors.blue, fontSize: 30)));
  }
}
