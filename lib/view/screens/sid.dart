import 'package:flutter/material.dart';

class Sid extends StatefulWidget {
  const Sid({Key? key}) : super(key: key);

  @override
  State<Sid> createState() => _SidState();
}

class _SidState extends State<Sid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Sid"),
        actions: const [
          Icon(Icons.refresh),
        ],
        elevation: 2,
      ),
    );
  }
}
