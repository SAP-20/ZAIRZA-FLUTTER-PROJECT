import 'package:flutter/material.dart';
import 'package:skill_care/Cart.dart';
import 'package:skill_care/Grid%20View.dart';
import 'package:skill_care/Registration_Screen.dart';
import 'constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';




class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth=FirebaseAuth.instance;
  String email;
  String password;
  var wrongEmail;
  var wrongPassword;
  var emailText;
  var passwordText;


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
                    color: Colors.black87,
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
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              TextFormField(
                onChanged: (value){
                  email=value;
                },
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                decoration:
                kTextFieldDecoration.copyWith(hintText: 'Email'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                onChanged: (value){
                  password=value;
                },
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
                        onPressed: () async {
                          try {
                            setState(() {
                              wrongEmail = false;
                              wrongPassword = false;
                            });
                            final user = await _auth.signInWithEmailAndPassword(
                                email: email, password: password);
                            if (user != null) {
                              print("Sucessfull");
                              Navigator.push(context, new MaterialPageRoute(
                                  builder: (context) => gridview())
                              );
                            }
                          } catch (e) {
                            print(e.code);
                            if (e.code == 'ERROR_WRONG_PASSWORD') {
                              setState(() {
                                wrongPassword = true;
                              });
                            } else {
                              setState(() {
                                emailText = 'User doesn\'t exist';
                                passwordText = 'Please check your email';
                                wrongPassword = true;
                                wrongEmail = true;
                              });
                            }
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      child: Text(
                        'Donot Have a Account?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => RegisterPage())
                        );
                      },
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
