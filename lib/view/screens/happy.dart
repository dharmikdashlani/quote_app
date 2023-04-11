import 'package:flutter/material.dart';

class Happy extends StatefulWidget {
  const Happy({Key? key}) : super(key: key);

  @override
  State<Happy> createState() => _HappyState();
}

class _HappyState extends State<Happy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Happy"),
        actions: const [
          Icon(Icons.refresh),
        ],
        elevation: 2,
      ),
    );
  }
}
