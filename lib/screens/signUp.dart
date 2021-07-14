import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: Container(
        margin: EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text('Hello Friend,',
                  style: TextStyle(
                  fontFamily: 'Sora',
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
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                          hintText: 'Email'
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              // borderRadius: BorderRadius.
                            ),
                            hintText: 'Password',
                            suffixIcon: Icon(Icons.visibility_off)
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          // borderRadius: BorderRadius.
                        ),
                          hintText: 'Confirm Password',
                          suffixIcon: Icon(Icons.visibility_off)

                      ),
                    ),
                    SizedBox(height: 20,),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      ),
                        onPressed: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Sign Up', style: TextStyle(fontSize: 16,),),
                            Icon(Icons.arrow_forward)
                          ],
                        )
                    ),
                    SizedBox(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?'),
                        TextButton(
                            onPressed: (){},
                            child: Text('Sign In Here')
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
















//
// Container(
// margin: EdgeInsets.only(top: 100),
// child: Column(
// children: [
// Container(
// margin: EdgeInsets.only(left: 20),
// child: ListTile(
// title: Text('Hello Friend,',
// style: TextStyle(
// fontFamily: 'Sora, SemiBold',
// fontWeight: FontWeight.bold,
// fontSize: 26, color: Color(0xff005682)),),
//
// subtitle: Text('Sign up now to get started',
// style: TextStyle(
// fontFamily: 'Sora, Regular',
// fontWeight: FontWeight.normal,
// fontSize: 17, color: Color(0xff5B5B5B)),),
// ),
// ),
// SizedBox(height: 30,),
//
// Container(
// margin: EdgeInsets.only(left: 20),
// child: TextField(
// // textAlign: TextAlign.end,
// decoration: InputDecoration(
// hintText: 'Email'
// ),
// ),
// )
// ],
// ),
// ),