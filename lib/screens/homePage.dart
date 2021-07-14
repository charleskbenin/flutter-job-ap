import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp/models/cate_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: Container(
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Daniel,',
                style: TextStyle(color: Color(0xff005682), fontSize: 24),),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  prefixIcon: Icon(Icons.location_on, color: Color(0xff005682),),
                  hintText: 'Search artisan by location',
                  fillColor: Colors.white,
                  filled: true
                ),
              ),
              SizedBox(height: 20,),
              Text('Categories',  style: TextStyle(
                  color: Color(0xff5B5B5B),
                  fontSize: 12,
                  fontWeight: FontWeight.bold
              ),),
              Container(
                // color: Colors.blue,
                margin: EdgeInsets.only(top: 20, bottom: 20),
                width: double.infinity,
                height: MediaQuery.of(context).size.height *0.15,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                    itemBuilder: (BuildContext context, int index){
                      return Card(
                        elevation: 20,
                        child: Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(category[index]['image'],
                                height: MediaQuery.of(context).size.height *0.10,
                                width: MediaQuery.of(context).size.width *0.30,
                              ),
                              Text(category[index]['title'],
                                style: TextStyle(
                                    color: Color(0xff005682),
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
              // SizedBox(height: 10,),
              Text('Top Rated Artisans'),
              Expanded(
                child: Container(
                      child: ListView.builder(
                          itemCount: users.length,
                          itemBuilder: (BuildContext context, int index){
                            return Card(
                              // elevation: 20,
                              child: Container(
                                height: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(width: 20,),
                                        Center(
                                          child: CircleAvatar(
                                            radius: 40,
                                              backgroundImage: AssetImage(users[index]['image'],)
                                          ),
                                        ),
                                        SizedBox(width: 20,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(users[index]['names'],
                                              style: TextStyle(
                                                  color: Color(0xff5B5B5B),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Text(users[index]['job'],style: TextStyle(
                                                fontSize: 12,
                                            ),),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                Icon(Icons.location_on, color: Color(0xff005682),),
                                                Text(users[index]['location'], style: TextStyle(
                                                    color: Color(0xff005682),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold
                                                ),)
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                  ),
            ],
          ),

        ),
    );
  }
}
