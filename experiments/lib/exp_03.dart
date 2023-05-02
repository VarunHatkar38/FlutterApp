import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.deepOrange,

      appBar: AppBar(title: Text('Flutter Widgets' ,
        style: TextStyle(fontSize: 30),) , centerTitle: true,),

      // ignore: avoid_unnecessary_containers
      body: Container(

        child: Center(

          child: ElevatedButton(

            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_alarm , size: 40,),
                  Text(" Set Alarm"),
                ]),

            style: ElevatedButton.styleFrom(

              padding: EdgeInsets.all(20),
              fixedSize: Size(250, 90),
              textStyle: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold,
              ),

              backgroundColor: Colors.orange,
              foregroundColor: Colors.black,
              elevation: 15,
              shadowColor: Colors.black,
              side: BorderSide(
                color: Colors.black,
                width: 3,
              ),
              shape: StadiumBorder(),
            ),

            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Alarm Set" ,
                      style: TextStyle(fontSize: 30)),
                  content: const Text("Alarm set for 1 Hour" ,
                      style: TextStyle(fontSize: 20)),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(

                        color: Colors.white,
                        padding: const EdgeInsets.all(14),
                        child: const Text("Done" ,
                          style: TextStyle(fontSize: 25 ,
                            fontWeight: FontWeight.bold , ) ,),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),

        ),
      ),
    );
  }
}
