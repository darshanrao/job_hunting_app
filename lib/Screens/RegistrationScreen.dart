import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_hunting_app/constants.dart';
import 'package:job_hunting_app/pallette.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_hunting_app/Widgets/button_tile.dart';

import 'Fabricate.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'Registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: kDarkPrimaryColor),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'CREATE YOUR FINDEST PROFILE',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: kDarkPrimaryColor),
                ),
              ),
              Text(
                'CREATE YOUR FINDEST PROFILE',
                style: kTextEditor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                      color: kDarkPrimaryColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('images/flat-color-iconsgoogle.png'),
                      )),
                  Card(
                    color: kDarkPrimaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset('images/logosfacebook.png'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: kDarkPrimaryColor,
                    thickness: 3,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      "OR",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: kDarkPrimaryColor),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    color: kDarkPrimaryColor,
                    thickness: 3,
                  )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'FULL NAME',
                    enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: kDarkPrimaryColor),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kDarkPrimaryColor),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'EMAIL ADDRESS',
                    enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: kDarkPrimaryColor),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kDarkPrimaryColor),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'CREATE PASSWORD',
                    enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: kDarkPrimaryColor),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kDarkPrimaryColor),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'MOBILE NUMBER',
                    enabledBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(color: kDarkPrimaryColor),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kDarkPrimaryColor),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: kDarkPrimaryColor,
                    value: true,
                  ),
                  Text(
                    'SEND ME NOTIFICATION VIA HOWSAPP',
                    style: kTextEditor,
                  ),
                ],
              ),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: kTextEditor.copyWith(fontSize: 12),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              'By clicking register you agree to FinderLoom\'s '),
                      TextSpan(
                          text: 'Terms & Conditions ',
                          style: TextStyle(color: kDarkPrimaryColor)),
                      TextSpan(
                        text: 'and ',
                      ),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: kDarkPrimaryColor)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: ButtonTile(
                    onPress: () {
                      Navigator.pushNamed(context, Fabricate.id);
                    },
                    title: 'Register',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
