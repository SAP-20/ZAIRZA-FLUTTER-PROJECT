import 'package:flutter/material.dart';
import 'package:skill_care/Cart.dart';

class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
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
              Navigator.pushNamed(context, "SecondPage");
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
          actions: <Widget>[
            IconButton(icon: Icon(Icons.shopping_cart,color: Colors.black,), onPressed: () {
              Navigator.pushNamed(context, "FifthPage");
            })
          ],
        ),
        body: Card(
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage('images/mac.jfif'),
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 25.0,
                  ),
                  Text(
                    'MacBookAir',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                      width: 180.0
                  ),
                  Text(
                    '\$3000',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              Container(
                  height: 225.0,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 95,
                      ),
                      ButtonTheme(
                        height: 56.0,
                        minWidth: 300.0,
                        buttonColor: Colors.yellow.shade600,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0)
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "FifthPage");
                          },
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      ButtonTheme(
                        height: 56.0,
                        minWidth: 300.0,
                        buttonColor: Colors.blueAccent,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0)
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "SixthPage");
                          },
                          child: Text(
                            'Buy Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
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
