import 'package:flutter/material.dart';
import 'main.dart';


class RegistForm extends StatefulWidget {
  @override
  RegistFormState createState() {
    return RegistFormState();
  }
}


class RegistFormState extends State<RegistForm> {

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final myController1 = TextEditingController();
    final myController2 = TextEditingController();
    final myController3 = TextEditingController();
    @override
    void dispose() {
      myController1.dispose();
      myController2.dispose();
      super.dispose();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(title: Text("REGISTER"), centerTitle: true),
        body: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(50.0),
            children: <Widget>[
              TextFormField(
                controller: myController1,
                decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email)),
              ),
              TextFormField(
                controller: myController2,
                decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock)),
                obscureText: true,
              ),
              TextFormField(
                controller: myController3,
                decoration: InputDecoration(
                    hintText: 'Confirm password',
                    prefixIcon: Icon(Icons.lock)),
                obscureText: true,
              ),
              RaisedButton(
                onPressed: () {
                  if (myController1.text.isEmpty ||
                      myController2.text.isEmpty) {
                        _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("กรุณาระบุข้อมูลให้ครบถ้วน"))); 
                  } else if (myController1.text == "admin") {
                    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("user นี้มีอยู่ในระบบแล้ว"))); 
                  } else if (myController2.text != myController3.text) {
                      _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("password mismatch"))); 
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: Text('CONTINUE'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
