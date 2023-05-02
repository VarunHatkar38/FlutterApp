import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        debugShowCheckedModeBanner: false,

        home: Scaffold(
          appBar: AppBar(title: Text('Exp 01' ,
            style: TextStyle(fontSize: 30),) , centerTitle: true,),

          body: Center(child: Text('Hello World' ,
            style: TextStyle(fontSize: 30),) ,),

          backgroundColor: Colors.deepOrange,
        ));
  }
}
