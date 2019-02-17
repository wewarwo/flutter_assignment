import 'package:flutter/material.dart';
import 'regist.dart';
import 'content.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'assign';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey we created above
    final myController1 = TextEditingController();
    final myController2 = TextEditingController();
    @override
    void dispose() {
      // Clean up the controller when the Widget is disposed
      myController1.dispose();
      myController2.dispose();
      super.dispose();
    }

    return Form(
      key: _formKey,
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(50.0),
        children: <Widget>[
          Image.asset('assets/images/avatar.png'),
          TextFormField(
            controller: myController1,
            decoration: InputDecoration(
                hintText: 'User Id',
                prefixIcon: Icon(Icons.account_circle)),
          ),
          TextFormField(
            controller: myController2,
            decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock)),
            obscureText: true,
          ),
          RaisedButton(
            onPressed: () {
              if (myController1.text.isEmpty || myController2.text.isEmpty) {
                Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text("กรุณาระบุ user or password")));
              } else if (myController1.text != "admin" ||
                  myController2.text != "admin") {
                Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text("user or password ไม่ถูกต้อง")));
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => content()),
                );
              }
            },
            child: Text('LOGIN'),
          ),
          FlatButton(
            child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Register new account",
                  textAlign: TextAlign.right,
                )),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegistForm()),
              );
            },
          ),
        ],
      ),
    );
  }
}
