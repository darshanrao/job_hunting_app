import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_hunting_app/Widgets/work_location_bubble.dart';

import '../constants.dart';
import '../pallette.dart';
import 'home.dart';
import 'package:job_hunting_app/Widgets/button_tile.dart';

class Work extends StatefulWidget {
  static String id = 'Work';
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
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
                    'YOUR WORK PREFERENCES',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: kDarkPrimaryColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'PREFERRED WORK LOCATION',
                        style: kTextEditor,
                      ),
                      Text(
                        'EDIT',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kDarkPrimaryColor),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    WorkLocationBubble(
                      title: 'Chennai',
                    ),
                    WorkLocationBubble(
                      title: 'Kolkata',
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'PREFERRED SALARY',
                    style: kTextEditor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.checkmark_circle_fill,
                              color: kDarkPrimaryColor,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Rupee',
                                style: kTextEditor.copyWith(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.circle,
                              color: kDarkPrimaryColor,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Dollar',
                                style: kTextEditor.copyWith(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '₹ 2,00,000',
                          enabledBorder: new UnderlineInputBorder(
                            borderSide:
                                new BorderSide(color: kDarkPrimaryColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: kDarkPrimaryColor),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      child: Text(
                        'Per Year',
                        style: kTextEditor.copyWith(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
                Center(
                  child: ButtonTile(
                    onPress: () {
                      Navigator.pushNamed(context, Home.id);
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
