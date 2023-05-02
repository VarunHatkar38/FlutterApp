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

          body: Container(

            margin: EdgeInsets.all(15),

            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.location_on , size: 30, color: Colors.red,),
                  title: Text('Location' , style: TextStyle(fontSize: 30),),
                  minVerticalPadding: 15,
                ),

                ListTile(
                  leading: Icon(Icons.phone , size: 30, color:  Colors.green,),
                  title: Text('Phone' , style: TextStyle(fontSize: 30),),
                  minVerticalPadding: 15,
                ),

                ListTile(
                  leading: Icon(Icons.bluetooth , size: 30, color:  Colors.blue,),
                  title: Text('Bluetooth' , style: TextStyle(fontSize: 30),),
                  minVerticalPadding: 15,
                ),

                ListTile(
                  leading: Icon(Icons.wifi , size: 30, color:  Colors.deepOrange,),
                  title: Text('WiFi' , style: TextStyle(fontSize: 30),),
                  minVerticalPadding: 15,
                ),

                ListTile(
                  leading: Icon(Icons.screenshot , size: 30, color:  Colors.black,),
                  title: Text('Screenshot' , style: TextStyle(fontSize: 30),),
                  minVerticalPadding: 15,
                ),
              ],
            ),

          ),

        ));
  }
}
