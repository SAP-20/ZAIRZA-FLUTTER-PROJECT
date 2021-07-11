import 'package:flutter/material.dart';
import 'constants.dart';
void main() {
  runApp(LoginPage());
}


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 100.0,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'SkillKraft',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),
              SizedBox(
                height: 65.0,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                decoration:
                kTextFieldDecoration.copyWith(hintText: 'Email'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Password'),
              ),
              SizedBox(
                height: 50.0,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: ButtonTheme(
                      height: 56,
                      minWidth: 300.0,
                      child: RaisedButton(
                        child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 20)),
                        color: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)
                        ),
                        onPressed: () => {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Donot Have a Account?',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ],
              )

            ],
          ),
        ),

      ),

    );
  }
}
