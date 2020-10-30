import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase/Services/usermanagement.dart';
class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                onPressed: () {},
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
                onPressed: () {
                  FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email, password: _password).then((signedInUser){
                    UserManagement().storeNewUser(signedInUser,context);
                  }).catchError((e){print(e);});
                },
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
