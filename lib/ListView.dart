

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:skill_care/Cart.dart';
import 'package:skill_care/description.dart';
import 'catalogList.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Skillkraft',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.shopping_cart,color: Colors.black,), onPressed: () {
              Navigator.pushNamed(context, "FifthPage");
            })
          ],
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'View',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  IconButton(
                      icon: Icon(
                          Icons.list_alt_sharp,
                        color: Colors.black87,
                      ),
                      onPressed: () {}
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.grid_on_sharp,
                        color: Colors.black87,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "ThirdPage");
                      }
                  ),

                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 16,
                  itemBuilder: (context,index){
                    return Card(
                        child:GestureDetector(
                          onTap: () {
                            Navigator.push(context, new MaterialPageRoute(
                                builder: (context) => cart())
                            );
                          },
                          child: Container(
                            child: new Row(
                              children: [                    Image(
                                image: AssetImage('images/mac.jfif'),
                                height: 150.0,
                                width: 175.0,
                              ),
                                SizedBox(
                                  width: 40.0,
                                ),
                                Column(
                                  children: [
                                    Text(
                                        "MacBookAir",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                          fontStyle: FontStyle.italic,
                                        )
                                    ),
                                    SizedBox(
                                      height: 40.0,
                                    ),
                                    new Text(
                                        "\$3000",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.grey,
                                        )
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const<BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(('Home')),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.timelapse_rounded),
              title: Text(('return')),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(('Profile')),
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
