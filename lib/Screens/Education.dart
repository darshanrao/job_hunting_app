import 'package:flutter/material.dart';
import 'package:job_hunting_app/Screens/Key_Skills.dart';

import '../constants.dart';
import '../pallette.dart';
import 'package:job_hunting_app/Widgets/button_tile.dart';

class Education extends StatefulWidget {
  static String id = 'Education';
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
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
                    'EDUCATION DETAILS',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: kDarkPrimaryColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'SELECT YOUR HIGHEST QUALITIES',
                    style: kTextEditor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 160,
                              height: 50,
                              child: Center(
                                child: Text('PhD/Doctrate',
                                    style: TextStyle(
                                        fontSize: 18,
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
                            ),
                            Container(
                              width: 160,
                              height: 50,
                              child: Center(
                                child: Text('Post Graduate',
                                    style: TextStyle(
                                        fontSize: 18,
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 160,
                              height: 50,
                              child: Center(
                                child: Text('Graduate/DIP',
                                    style: TextStyle(
                                        fontSize: 18,
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
                            ),
                            Container(
                              width: 160,
                              height: 50,
                              child: Center(
                                child: Text('Class XII',
                                    style: TextStyle(
                                        fontSize: 18,
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 160,
                              height: 50,
                              child: Center(
                                child: Text('Below Class X',
                                    style: TextStyle(
                                        fontSize: 18,
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
                            ),
                            Container(
                              width: 160,
                              height: 50,
                              child: Center(
                                child: Text('Class X',
                                    style: TextStyle(
                                        fontSize: 18,
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
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                Center(
                  child: ButtonTile(
                    onPress: () {
                      Navigator.pushNamed(context, KeySkills.id);
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
