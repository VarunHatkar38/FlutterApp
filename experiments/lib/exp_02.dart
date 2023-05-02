import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        debugShowCheckedModeBanner: false,

        home: Scaffold(

          appBar: AppBar(title: Text('Flutter Widgets' ,
            style: TextStyle(fontSize: 30),) , centerTitle: true,),

          body: Center(

            child: Column(

              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.yellow,
                  alignment: Alignment.center,
                  child: Text('Container 1' , style: TextStyle(fontSize: 30),),
                  margin: EdgeInsets.all(10),
                ),

                Container(
                    height: 200,
                    width: 200,
                    color: Colors.yellow,
                    alignment: Alignment.center,
                    child: Image.asset("images/profile.png")
                ),

                Container(
                  height: 200,
                  width: 200,
                  color: Colors.lightBlueAccent,
                  alignment: Alignment.center,
                  child: Text('Container 3', style: TextStyle(fontSize: 30),),
                  margin: EdgeInsets.all(10),
                ),
              ],
            ),
          ),

          backgroundColor: Colors.deepOrange,
        ));
  }
}
