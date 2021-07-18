import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:skill_care/Login.dart';
import 'constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String email;
  String password;
  String password2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Card(
          child: ListView(
            children: [
              SizedBox(
                height: 80.0,
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
                  'Register',
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
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Password'),
                onChanged: (value) {
                  password2=value;
                },
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Confirm Password'),
                onChanged: (value) {
                  password2=value;
                },
              ),
              SizedBox(
                height: 25.0,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: ButtonTheme(
                      height: 56,
                      minWidth: 300.0,
                      child: Align(
                        alignment: Alignment.center,
                        child: RaisedButton(
                          child: Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 20)),
                          color: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0)
                          ),
                          onPressed: () async {
                            // print(email),
                            // print(password)
                            final newUser=await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                email: email, password: password)
                                .then((result) {
                              print(result.user.email);
                            });
                          }
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15.0,
                  ),
                  GoogleAuthButton(
                    onPressed:  () {
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => LoginPage())
                      );
                    },
                    text: 'CONTINUE WITH GOOGLE',
                    style: AuthButtonStyle(
                      buttonColor: Color(0xff4285F4),
                      iconSize: 24,
                      iconBackground: Colors.white,
                      buttonType: AuthButtonType.secondary,
                      height: 50,
                      textStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      child: Text(
                        'Have an account? Login',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontSize: 15.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => LoginPage())
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

