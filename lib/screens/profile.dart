import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  _getCard(),
                  _getAvater(),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Selorm Akuvi',
                style: TextStyle(color: Color(0xff5B5B5B), fontSize: 24),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Color(0xffEF4F70),
                        ),
                        Text(
                          'Plumber',
                          style:
                              TextStyle(color: Color(0xff005682), fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xff005682),
                        ),
                        Text(
                          'Ofankor',
                          style:
                              TextStyle(color: Color(0xff005682), fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Bio', style: TextStyle(color: Color(0xff005682), fontSize: 14),),
                      SizedBox(height: 10,),
                      Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum'),
                      SizedBox(height: 10,),
                      Text('Days Available', style: TextStyle(color: Color(0xff005682), fontSize: 14),),
                      SizedBox(height: 5,),
                      Text('Mondays', style: TextStyle(color: Color(0xff5B5B5B), fontSize: 12),),
                      SizedBox(height: 5,),
                      Text('Wednesdays', style: TextStyle(color: Color(0xff5B5B5B), fontSize: 12),),
                      SizedBox(height: 5,),
                      Text('Saturdays', style: TextStyle(color: Color(0xff5B5B5B), fontSize: 12),),
                      SizedBox(height: 5,),
                      Text('Sundays', style: TextStyle(color: Color(0xff5B5B5B), fontSize: 12),),
                      SizedBox(height: 20,),
                      Text('Time Available', style: TextStyle(color: Color(0xff005682), fontSize: 14),),
                      SizedBox(height: 5,),
                      Text('8 AM - 5 PM', style: TextStyle(color: Color(0xff5B5B5B), fontSize: 12),),
                      SizedBox(height: 30,),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton.icon(
                              onPressed: (){},
                              icon: Icon(Icons.email, color: Color(0xff005682)),
                              label: Text('Send SMS',  style: TextStyle(color: Color(0xff005682)),)
                          ),
                          FlatButton.icon(
                            color: Color(0xff005682),
                              onPressed: (){},
                              icon: Icon(Icons.call, color: Colors.white,),
                              label: Text('Call Now', style: TextStyle(color: Colors.white),)
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _getCard() {
    return Container(
      // margin: EdgeInsets.only(top: 18),
      height: 200,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff1E4F64), Color(0xff2179BC)]),
          // color: Colors.pinkAccent,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
    );
  }

  _getAvater() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 150),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
            border: Border.all(color: Colors.white, width: 4),
            image: DecorationImage(
                image: AssetImage('images/plumber.jpg'), fit: BoxFit.cover)),
      ),
    );
  }
}
