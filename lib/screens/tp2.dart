import 'package:flutter/material.dart';

class TP2 extends StatefulWidget {
  const TP2({super.key});

  @override
  State<TP2> createState() => _TP2State();
}

class _TP2State extends State<TP2> {
  final user = TextEditingController();
  final pw = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('TP2')),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextFormField(
              controller: user,
              decoration: const InputDecoration(
                hintText: "user_name",
                prefixIcon: Icon(Icons.person),
                labelText: "user_name",
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextFormField(
              controller: pw,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "password",
                prefixIcon: Icon(Icons.key),
                labelText: "password",
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          "user name = ${user.text} \n password = ${pw.text}"),
                    ));
                  },
                  icon: const Icon(Icons.check),
                  label: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Valider'),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.cancel_outlined),
                  label: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Annuler'),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
