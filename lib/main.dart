import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
Random random= Random();
int x = 4;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottry winning number is 4',style: TextStyle(fontSize: 25),)),
            Container(height: 11,),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.cyan.shade300,
                  borderRadius: BorderRadius.circular(21)
              ),
              child:x==4 ?  Column(children: [
                Icon(Icons.done_all_outlined, size: 50,color: Colors.blue,),
                SizedBox(height: 11,),
                Text("You have won this lottery", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),)
              ]):






              Column(children: [
                Icon(Icons.warning_amber, size: 50,color: Colors.red,),
                SizedBox(height: 11,),
                Text("Better luck next time your number \nis $x try again", textAlign: TextAlign.center, style: TextStyle(fontSize: 20),)
              ]),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x=random.nextInt(10);
            print(x);
            setState(() {

            });

          },
          child: Icon(Icons.update),
        ),

      ),
    );
  }
}
