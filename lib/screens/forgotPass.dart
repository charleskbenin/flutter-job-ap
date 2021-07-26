import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF6F6F6),
        appBar: AppBar(
          backgroundColor: Color(0xff005682),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Container(
          // color: Colors.red,
          margin: EdgeInsets.only(
            top: 80,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Reset Password',
                    style: TextStyle(
                        fontFamily: 'Sora, SemiBold',
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: Color(0xff005682)),
                  ),
                  subtitle: Text(
                    "Enter the email associated with your account\nand we'll send an email with instructions to \nreset your password.",
                    style: TextStyle(
                        fontFamily: 'Sora, Regular',
                        fontWeight: FontWeight.normal,
                        fontSize: 17,
                        color: Color(0xff5B5B5B)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 18, right: 18),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                // borderRadius: BorderRadius.
                                ),
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xff005682)
                          ),
                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Send Instructions', style: TextStyle(fontSize: 16,),),
                            ],
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
