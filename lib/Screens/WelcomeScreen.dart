import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_hunting_app/Screens/RegistrationScreen.dart';
import 'package:job_hunting_app/constants.dart';
import 'package:job_hunting_app/pallette.dart';
import 'package:job_hunting_app/Widgets/button_tile.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'Welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/Logo (3).png',
                width: 100,
                height: 100,
              ),
              Image.asset(
                'images/nAME (3).png',
                width: 300,
                height: 50,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'NO 1 JOB HUNTER!!',
                style: TextStyle(
                  color: kDarkPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.search,
                    color: kSecondaryTextColor,
                  ),
                  Text(
                    'Search',
                    style: kTextEditor,
                  ),
                ],
              ),
              Divider(
                color: kSecondaryTextColor,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RegistrationScreen.id);
                      },
                      child: Container(
                        width: 120,
                        height: 40,
                        child: Center(
                          child: Text('Register',
                              style: TextStyle(color: Colors.white)),
                        ),
                        decoration: BoxDecoration(
                            color: kDarkPrimaryColor,
                            borderRadius: BorderRadius.circular(10)),
                      )),
                  Container(
                    width: 120,
                    height: 40,
                    child: Center(
                      child: Text('Login',
                          style: TextStyle(
                              color: kDarkPrimaryColor,
                              fontWeight: FontWeight.bold)),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: kDarkPrimaryColor,
                          style: BorderStyle.solid,
                          width: 3.0,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
