import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int number = 0;

  void change_stuff() {
    setState(() {
      number = Random().nextInt(5) + 1;
      print(number);
    });

  }
  @override
  Widget build(BuildContext context) {




    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade400,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {
                        change_stuff();
                        print('YA WHO');
                      },
                      child: Image(
                        image: AssetImage('images/ball$number.png'),
                      ),),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){

                },
                  child: Image(
                    image: AssetImage('images/picture$number-removebg-preview.png'),
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
