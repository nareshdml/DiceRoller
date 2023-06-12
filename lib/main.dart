import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DiceRoller',
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 6;

  changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 30, 53),
        centerTitle: true,
        title: Text('Dice Roller'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          //image
          Center(
            child:
                Image.asset('assets/$diceNumber.png', height: 250, width: 250),
          ),
          SizedBox(height: 20),
          //button
          MaterialButton(
            color: Color.fromARGB(255, 1, 30, 53),
            onPressed: changeDice,
            child: Text(
              "Roll",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 200),
          Text(
            'Developed by Naresh Dhimal',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
