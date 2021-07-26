import 'package:flutter/material.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  _CreatePasswordState createState() => _CreatePasswordState();
}
bool isPasswordVisible = true;

class _CreatePasswordState extends State<CreatePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF6F6F6),
        appBar: AppBar(
          backgroundColor: Color(0xff005682),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){},
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 80),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text('Create New Password',
                    style: TextStyle(
                        fontFamily: 'Sora, SemiBold',
                        fontWeight: FontWeight.bold,
                        fontSize: 26, color: Color(0xff005682)),),

                  subtitle: Text('Your new password must be different\nfrom previous used passwords',
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
                        obscureText: isPasswordVisible,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                            ),
                            hintText: 'New Password',
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

                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              obscureText: isPasswordVisible,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    // borderRadius: BorderRadius.
                                  ),
                                  hintText: 'Confirm Password',
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
                            Text('Both passwords must match.')
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),

                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff005682)
                          ),
                          onPressed: (){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Reset Password', style: TextStyle(fontSize: 16,),),
                            ],
                          )
                      ),
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
