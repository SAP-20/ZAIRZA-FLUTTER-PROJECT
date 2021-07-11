import 'package:flutter/material.dart';
import 'package:skill_care/description.dart';
void main() {
  runApp(Cart());
}
class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {},
          ),
          title: Text(
            'Yours Orders',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 20.0,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 16,
          itemBuilder: (context,index){
            return Card(
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
                )
            );
          },
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
