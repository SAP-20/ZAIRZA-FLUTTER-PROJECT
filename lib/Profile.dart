import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skill_care/Cart.dart';
import 'package:skill_care/Grid%20View.dart';
import 'package:skill_care/Login.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => Cart())
              );
            },
          ),
          title: Text(
            'Profile',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            children: [
              Column(
                children: [
                  Image(image: AssetImage('images/Profile.png')),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Not Logged In',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Column(
                    children: <Widget>[
                      ButtonTheme(
                        height: 50.0,
                        minWidth: 350.0,
                        buttonColor: Colors.blueAccent,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(
                                builder: (context) => LoginPage())
                            );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: 1,
          items: const<BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
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

