import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    String _email;
    String _password;
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: 'Email'),
                onChanged: (value) {
                  _email = value;
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Password'),
                onChanged: (value) {
                  _password = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: () {
                  FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password).then(( user){
                    Navigator.pushReplacementNamed(context,'/homepage');
                  }).catchError((e){print(e);});
                },
                child: Text('Login'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 7,
              ),
              SizedBox(
                height: 15,
              ),
              Text('Don\'t have an account?'),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('Sign Up'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
