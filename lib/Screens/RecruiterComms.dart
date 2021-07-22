import 'package:flutter/material.dart';

import '../constants.dart';
import '../pallette.dart';
import 'package:job_hunting_app/Widgets/button_tile.dart';

class RecruiterComms extends StatefulWidget {
  static String id = 'Recruiters comms';
  @override
  _RecruiterCommsState createState() => _RecruiterCommsState();
}

class _RecruiterCommsState extends State<RecruiterComms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDarkPrimaryColor,
        title: Text(
          'RECRUITER COMMUNICATIONS',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset('images/whhminisad.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'You have not received any messages!',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kDarkPrimaryColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Something went wrong please try again after sometime',
                style: kTextEditor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
