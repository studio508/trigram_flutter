import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      const MaterialApp(
        home: TrigramPage(),
      ),
    );

class TrigramPage extends StatelessWidget {
  const TrigramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'Trigram',
          style: TextStyle(fontSize: 35),
        ),
      ),
      body: const Trigram(),
    );
  }
}

class Trigram extends StatefulWidget {
  const Trigram({super.key});

  @override
  State<Trigram> createState() => _TrigramState();
}

class _TrigramState extends State<Trigram> {
  int triNumber = 1;
  int triTextNumber = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/trigram$triNumber.png'),
            Image.asset('images/triText$triTextNumber.png'),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    triNumber;
                    triTextNumber;
                    triNumber = triTextNumber = Random().nextInt(8) + 1;
                    // queTextNumber;
                    // queNumber;
                    // queNumber = queTextNumber = Random().nextInt(8) + 1;
                    // eureka!!!
                  });
                },
                child: Image.asset(
                  'images/trigramIcon.png',
                  // child: const Image(
                  //   image: AssetImage('images/trigramIcon.png'),
                ),
              ),
            ),
            const Text(
              'Click!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
