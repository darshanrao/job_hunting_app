import 'package:flutter/material.dart';

import '../constants.dart';
import '../pallette.dart';
import 'WorkPref.dart';
import 'package:job_hunting_app/Widgets/button_tile.dart';

class KeySkills extends StatefulWidget {
  static String id = 'Keyskills';
  @override
  _KeySkillsState createState() => _KeySkillsState();
}

class _KeySkillsState extends State<KeySkills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'KEY SKILLS',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: kDarkPrimaryColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'TYPE YOUR SKILLS',
                    style: kTextEditor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Eg. Sales,Marketing...',
                      enabledBorder: new UnderlineInputBorder(
                        borderSide: new BorderSide(color: kDarkPrimaryColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kDarkPrimaryColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                Center(
                  child: ButtonTile(
                    onPress: () {
                      Navigator.pushNamed(context, Work.id);
                    },
                    title: 'Next',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
