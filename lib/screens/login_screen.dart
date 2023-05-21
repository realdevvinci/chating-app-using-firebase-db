import 'package:flutter/material.dart';
import "package:flash_chat/Components/Rounded_button.dart";
import "package:flash_chat/constants.dart";

import "package:firebase_auth/firebase_auth.dart";

import 'package:firebase_core/firebase_core.dart';
import "package:flash_chat/firebase_options.dart";
import "./chat_screen.dart";

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {

  static String id = "login_screen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late String email;
  late String password;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {


    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(

                  tag: "logo",
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
            email = value;
                  },

                decoration: kTextFieldDecoration.copyWith(hintText: "Enter Your Email"),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(

                obscureText: true,
                textAlign: TextAlign.center,

                onChanged: (value) {
password = value;
},
                decoration: kTextFieldDecoration.copyWith(hintText: "Enter Your password"),

        ),
              SizedBox(
                height: 24.0,
              ),
          RoundedButton(Colors.lightBlueAccent, "Log in", () async{
            setState(() {
              showSpinner = true;

            });

      try {

        final _auth = FirebaseAuth.instance;
        final newUser = await _auth.signInWithEmailAndPassword(email: email, password: password);

        if(newUser!=null){
          Navigator.pushNamed(context, ChatScreen.id);
        }

        setState(() {
          showSpinner = false;

        });
      }
      catch(e){
        setState(() {
          showSpinner = false;

        });
        print(e);



      }

          }),
            ],
          ),
        ),
      ),
    );
  }
}
