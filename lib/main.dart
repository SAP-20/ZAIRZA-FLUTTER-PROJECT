import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
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
            height: 150.0,
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
          )
        ],
      ),
    ),
  ),
);

