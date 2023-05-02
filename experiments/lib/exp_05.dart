import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyForm(),
    );
  }
}
//-------------------------------------------------------------------
class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Flutter Widgets' ,
        style: TextStyle(fontSize: 30),) , centerTitle: true,),

      body: Container(
        padding: EdgeInsets.all(30),

        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person ,size: 50, color:  Colors.blue,),
                  hintText: 'Enter your full name',
                  labelText: 'Username',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Some Text';
                  }
                  return null;
                },
              ),

              SizedBox(
                height: 20,
              ),

              TextFormField(
                decoration: const InputDecoration(
                  icon: const Icon(Icons.phone ,size: 50, color:  Colors.blue,),
                  hintText: 'Enter a phone number',
                  labelText: 'Phone',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Valid Phone Number';
                  }
                  return null;
                },
              ),

              SizedBox(
                height: 20,
              ),

              TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.calendar_month ,size: 50, color:  Colors.blue,),
                  hintText: 'Enter Your Date Of Birth',
                  labelText: 'Dob',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Valid Date';
                  }
                  return null;
                },
              ),

              new Container(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: new ElevatedButton(
                    child: Center(child: Text('Submit',style: TextStyle(fontSize: 25))),

                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}


