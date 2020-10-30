import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class UserManagement{
  storeNewUser(user,context){Firestore.instance.collection('/users').add({'email':user.email,'uid':user.uid}).then((value){
    Navigator.pop(context);
    Navigator.pushReplacementNamed(context,'/homepage');
  }).catchError((e){print(e);});}
}