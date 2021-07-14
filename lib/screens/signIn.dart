import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}
bool isPasswordVisible = true;
class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF6F6F6),
        body: Container(
          margin: EdgeInsets.only(top: 100),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text('Hello Friend,',
                    style: TextStyle(
                        fontFamily: 'Sora, SemiBold',
                        fontWeight: FontWeight.bold,
                        fontSize: 26, color: Color(0xff005682)),),

                  subtitle: Text('Sign up now to get started',
                    style: TextStyle(
                        fontFamily: 'Sora, Regular',
                        fontWeight: FontWeight.normal,
                        fontSize: 17, color: Color(0xff5B5B5B)),),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(left: 18, right: 18),
                  child: Column(
                    children: [
                      TextField(
                        // textAlign: TextAlign.end,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              // borderRadius: BorderRadius.
                            ),
                            hintText: 'Email'
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 5),
                        child: TextField(
                          obscureText: isPasswordVisible,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                // borderRadius: BorderRadius.
                              ),
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      isPasswordVisible =! isPasswordVisible;
                                    });
                                  },
                                  icon: Icon(
                                      isPasswordVisible ?Icons.visibility_off
                                          : Icons.visibility)
                              )
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Forgot Password?'),
                            ],
                          )
                      ),

                      // SizedBox(height: 10,),

                      // TextField(
                      //   // textAlign: TextAlign.end,
                      //   decoration: InputDecoration(
                      //       border: OutlineInputBorder(
                      //         // borderRadius: BorderRadius.
                      //       ),
                      //       hintText: 'Confirm Password',
                      //       suffixIcon: Icon(Icons.visibility_off)
                      //
                      //   ),
                      // ),
                      SizedBox(height: 20,),

                      ElevatedButton(
                          style: ElevatedButton.styleFrom(),
                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Sign In', style: TextStyle(fontSize: 16,),),
                              Icon(Icons.arrow_forward)
                            ],
                          )
                      ),
                      SizedBox(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?"),
                          TextButton(
                              onPressed: (){},
                              child: Text('Sign Up Here')
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
