import 'package:flutter/material.dart';
import 'dart:math';

//This is Starting Point!
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.cyan.shade800,
      appBar: AppBar(
        title: Text('dice'),
        backgroundColor: Colors.cyan.shade900,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({ Key? key }) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  //Var
  int leftDiceNumber  = 1;
  int rightDiceNumber = 2;

  void changeDiceFace(){
    leftDiceNumber = Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(6)+1;
  }  

  @override
  Widget build(BuildContext context) {

    // App
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: (){
                setState(() {
                
                changeDiceFace();
                  
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: (){
                setState(() {
                  changeDiceFace();
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}