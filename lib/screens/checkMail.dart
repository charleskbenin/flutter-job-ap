import 'package:flutter/material.dart';

class CheckMail extends StatefulWidget {
  const CheckMail({Key? key}) : super(key: key);

  @override
  _CheckMailState createState() => _CheckMailState();
}

class _CheckMailState extends State<CheckMail> {
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
          margin: EdgeInsets.symmetric(vertical: 50),
          child: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(vertical: 50),
                  child: Center(child: Image.asset('images/envlop1.png'))),
              Text(
                'Check your mail',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xff005682)),
              ),
              SizedBox(height: 10,),
              Text(
                  'We have sent a password recover\n       instructions to your email',
                  style: TextStyle(
                      fontSize: 16,
                  )
              ),
              // SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 90),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff005682)
                    ),
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Open email app', style: TextStyle(fontSize: 16,),),
                      ],
                    )
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: (){},
                      child: Text('Skip,')
                  ),
                  Text("I will confirm later"),
                ],
              )
            ],
          )),
        ));
  }
}
