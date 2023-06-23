import 'package:flutter/material.dart';

import '../first/first_screen.dart';
import '../second/second_screen.dart';
import '../third/third_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NAME:  "),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return FirstScreen();
              }));
            }, child: Text("First screen")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return SecondScreen();
              }));
            }, child: Text("Second screen")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ThirdScreen();
              }));
            }, child: Text("Third screen")),
          ],
        ),
      ),
    );
  }
}
