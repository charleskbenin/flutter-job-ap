import 'package:flutter/material.dart';

import 'models/cate_model.dart';
import 'screens/checkMail.dart';
import 'screens/createPassword.dart';
import 'screens/forgotPass.dart';
import 'screens/homePage.dart';
import 'screens/profile.dart';
import 'screens/signIn.dart';
import 'screens/signUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home:
      // CheckMail()
      CreatePassword()
      // ForgotPassword()
      // ProfilePage()
      // NavBar()
      // HomePage()
      // SignIn()
      // SignUp(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
