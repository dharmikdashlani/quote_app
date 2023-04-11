import 'package:flutter/material.dart';

class Angry extends StatefulWidget {
  const Angry({Key? key}) : super(key: key);

  @override
  State<Angry> createState() => _AngryState();
}

class _AngryState extends State<Angry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Angry"),
        actions: const [
          Icon(Icons.refresh),
        ],
        elevation: 2,
      ),
    );
  }
}
