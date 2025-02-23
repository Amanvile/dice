import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.green,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=3;

  @override


  Widget build(BuildContext context) {

  void diceRoll(){
    leftDiceNumber=Random().nextInt(5)+1;
    rightDiceNumber=Random().nextInt(5)+1;


  }

    return SafeArea(

      child:



            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(

                  // mainAxisAlignment: MainAxisAlignment.center,


                    children: [ Expanded(child: TextButton(onPressed:(){setState(() {
                      diceRoll();
                    });},child:Image.asset("images/dice$leftDiceNumber.png"))),
                                Expanded(child:TextButton(onPressed:(){setState(() {
                                  diceRoll();
                                });},child: Image.asset("images/dice$rightDiceNumber.png"))),
                    ],
                ),
              ),
            ),



    );
  }
}