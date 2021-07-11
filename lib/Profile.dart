import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
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
            onPressed: () {},
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
                          onPressed: () {},
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

