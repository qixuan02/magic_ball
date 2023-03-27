import 'dart:math';

import 'package:flutter/material.dart';

void main(){

  runApp(BallPage());

}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
        child: Text('Ask Me Anything'),
    ),
        ),
          body: Container (
            child:
              Ball(),
          ),
    ),
    );
  }
}


class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      //home:Scaffold(
        //backgroundColor: Colors.blue[200],
        //appBar: AppBar(
          //backgroundColor: Colors.blue[900],
          //title: Center(
           // child: Text('Ask Me Anythings'),

        //  ),
       // ),
        //body:Center(
          child: TextButton(
            onPressed: (){
              setState(() {
                ballNumber= Random().nextInt(5)+1;
              });
              print(ballNumber);
            },

              child: Image.asset('assets/ball$ballNumber.png'),

          ),

        //) ,
      //),
    );
  }
}

