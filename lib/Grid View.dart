import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'catalogList.dart';


class gridview extends StatelessWidget {
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
                      onPressed: () {
                        Navigator.pushNamed(context, "ThirdPage");
                      }
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.grid_on_sharp,
                        color: Colors.black87,
                      ),
                      onPressed: () {}
                  ),
                ],
              ),
              Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "FourthPage");
                    },
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: [
                        new Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage('images/mac.jfif'),
                                height: 150.0,
                                width: 175.0,
                              ),
                              new SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  new Text(
                                      "MacBookAir",

                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black87,
                                      )
                                  ),
                                  SizedBox(
                                    width: 60.0,
                                  ),
                                  new Text(
                                      "\$3000",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        new Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage('images/mac.jfif'),
                                height: 150.0,
                                width: 175.0,
                              ),
                              new SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  new Text(
                                      "MacBookAir",

                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                  SizedBox(
                                    width: 60.0,
                                  ),
                                  new Text(
                                      "\$3000",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        new Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage('images/mac.jfif'),
                                height: 150.0,
                                width: 175.0,
                              ),
                              new SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  new Text(
                                      "MacBookAir",

                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                  SizedBox(
                                    width: 60.0,
                                  ),
                                  new Text(
                                      "\$3000",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        new Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage('images/mac.jfif'),
                                height: 150.0,
                                width: 175.0,
                              ),
                              new SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  new Text(
                                      "MacBookAir",

                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                  SizedBox(
                                    width: 60.0,
                                  ),
                                  new Text(
                                      "\$3000",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        new Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage('images/mac.jfif'),
                                height: 150.0,
                                width: 175.0,
                              ),
                              new SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  new Text(
                                      "MacBookAir",

                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                  SizedBox(
                                    width: 60.0,
                                  ),
                                  new Text(
                                      "\$3000",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        new Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage('images/mac.jfif'),
                                height: 150.0,
                                width: 175.0,
                              ),
                              new SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  new Text(
                                      "MacBookAir",

                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                  SizedBox(
                                    width: 60.0,
                                  ),
                                  new Text(
                                      "\$3000",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        new Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage('images/mac.jfif'),
                                height: 150.0,
                                width: 175.0,
                              ),
                              new SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  new Text(
                                      "MacBookAir",

                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                  SizedBox(
                                    width: 60.0,
                                  ),
                                  new Text(
                                      "\$3000",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        new Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage('images/mac.jfif'),
                                height: 150.0,
                                width: 175.0,
                              ),
                              new SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  new Text(
                                      "MacBookAir",

                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                  SizedBox(
                                    width: 60.0,
                                  ),
                                  new Text(
                                      "\$3000",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        new Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage('images/mac.jfif'),
                                height: 150.0,
                                width: 175.0,
                              ),
                              new SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  new Text(
                                      "MacBookAir",

                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                  SizedBox(
                                    width: 60.0,
                                  ),
                                  new Text(
                                      "\$3000",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        new Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage('images/mac.jfif'),
                                height: 150.0,
                                width: 175.0,
                              ),
                              new SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  new Text(
                                      "MacBookAir",

                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                  SizedBox(
                                    width: 60.0,
                                  ),
                                  new Text(
                                      "\$3000",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        new Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage('images/mac.jfif'),
                                height: 150.0,
                                width: 175.0,
                              ),
                              new SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  new Text(
                                      "MacBookAir",

                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                  SizedBox(
                                    width: 60.0,
                                  ),
                                  new Text(
                                      "\$3000",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        new Container(
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage('images/mac.jfif'),
                                height: 150.0,
                                width: 175.0,
                              ),
                              new SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  new Text(
                                      "MacBookAir",

                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                  SizedBox(
                                    width: 60.0,
                                  ),
                                  new Text(
                                      "\$3000",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey,
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                        )

                      ],
                    ),
                  ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: const<BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
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
