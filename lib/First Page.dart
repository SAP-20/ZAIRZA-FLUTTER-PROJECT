import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 240.0,
            ),

            Align(
                alignment: Alignment.center,
                child: Text(
                  'SkillKraft',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),
            SizedBox(
              height: 100.0,
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(50.0),
                child: Center(
                  child: Text(
                    'Powered by',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.0,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('images/zairza.jpg'),
              radius: 40,
            ),
            RawMaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, "SecondPage");
              },
              elevation: 2.0,
              fillColor: Colors.teal,
              child: Icon(
                Icons.arrow_forward_rounded,
                size: 35.0,
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            ),
          ],
        ),
      ),
    );
  }
}
