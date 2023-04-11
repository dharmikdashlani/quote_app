import 'package:flutter/material.dart';
import 'package:quote/view/screens/angry.dart';
import 'package:quote/view/screens/happy.dart';
import 'package:quote/view/screens/sid.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const Intro(),
        'Happy': (context) => const Happy(),
        'Sid': (context) => const Sid(),
        'Home': (context) => const Angry()
      },
    ),
  );
}

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Select Your Mood"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, 'Happy');
                      },
                      child: Image(
                        image: AssetImage("assets/img_icon/1 (1).png"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage("assets/img_icon/1 (2).png"),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage("assets/img_icon/1 (3).png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
