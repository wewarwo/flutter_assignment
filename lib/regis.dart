import 'package:flutter/material.dart';
import 'main.dart';



class Register extends StatelessWidget {
  
  final myController3 = TextEditingController();
  final myController4 = TextEditingController();
  final myController5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    final _formKey = GlobalKey<FormState>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "REGISTER",
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text("REGISTER"),
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(50.0),
            children: <Widget>[
              TextFormField(
                controller: myController3,
                decoration: InputDecoration(
                    hintText: 'Enter your email',
                    prefixIcon: Icon(Icons.account_circle)),
              ),
              TextFormField(
                controller: myController4,
                decoration: InputDecoration(
                    hintText: 'Please enter password',
                    prefixIcon: Icon(Icons.lock)),
                obscureText: true,
              ),
              TextFormField(
                controller: myController5,
                decoration: InputDecoration(
                    hintText: 'Please confirm password',
                    prefixIcon: Icon(Icons.lock)),
                obscureText: true,
              ),
              RaisedButton(
                onPressed: () {
                  if (myController3.text.isEmpty ||
                      myController4.text.isEmpty ||
                      myController5.text.isEmpty) {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(content: Text("กรุณาระบุข้อมูลให้ครบถ้วน")));
                  } else if (myController3.text == "admin") {
                    _scaffoldKey.currentState.showSnackBar(
                        SnackBar(content: Text("user นี้มีอยู่ในระบบแล้ว")));
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: Text('REGISTER'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class Register extends StatelessWidget {

//   @override
//   Widget build(context) {
//     final appTitle = 'Register';

//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("REGISTER"),
//         ),
//         body: RegisForm(),
//       ),
//     );
//   }
// }

// // Create a Form Widget
// class RegisForm extends StatefulWidget {
//   @override
//   RegisFormState createState() {
//     return RegisFormState();
//   }
// }

// // Create a corresponding State class. This class will hold the data related to
// // the form.
// class RegisFormState extends State<RegisForm> {
//   // Create a global key that will uniquely identify the Form widget and allow
//   // us to validate the form
//   //
//   // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     // Build a Form widget using the _formKey we created above
//     return Form(
//       key: _formKey,
//       child: ListView(
//         shrinkWrap: true,
//         padding: const EdgeInsets.all(50.0),
//         children: <Widget>[
//           TextFormField(
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'กรุณาระบุ user';
//               } else if (value != "admin") {
//                 return 'user ไม่ถูกต้อง';
//               }
//             },
//             decoration: InputDecoration(
//                 hintText: 'Enter your username',
//                 prefixIcon: Icon(Icons.account_circle)),
//           ),
//           TextFormField(
//             validator: (value) {
//               if (value.isEmpty) {
//                 return 'กรุณาระบุ password';
//               } else if (value != "admin") {
//                 return 'password ไม่ถูกต้อง';
//               }
//             },
//             decoration: InputDecoration(
//                 hintText: 'Please enter password',
//                 prefixIcon: Icon(Icons.lock)),
//             obscureText: true,
//           ),
//           RaisedButton(
//             onPressed: () {
//               // Validate will return true if the form is valid, or false if
//               // the form is invalid.
//               if (_formKey.currentState.validate()) {
//                 // If the form is valid, display a snackbar. In the real world, you'd
//                 // often want to call a server or save the information in a database
//                 Navigator.pop(context);
//               }
//             },
//             child: Text('REGISTER'),
//           ),
//         ],
//       ),
//     );
//   }
// }
