import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_hunting_app/Screens/Education.dart';
import 'package:job_hunting_app/Widgets/button_tile.dart';

import '../pallette.dart';

class Fabricate extends StatelessWidget {
  static String id = 'Fabricate_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LET\'S FABRICATE YOU PROFILE',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: kDarkPrimaryColor),
              ),
              Container(
                width: 340,
                height: 100,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('STUDENT/NEVER WORKED BEFORE',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: kDarkPrimaryColor,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Text('i.e Fresh Graduates, Graduates having no work'),
                      ],
                    ),
                  ),
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
                width: 340,
                height: 100,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('WORKING/HAVE WORKED BEFORE',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Text(
                          'i.e Working/Worked in an organization,agency,company or business',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: kDarkPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CURRENT CITY',
                      style:
                          TextStyle(fontSize: 25, color: kSecondaryTextColor),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter City',
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
                  ],
                ),
              ),
              Center(
                // child: FlatButton(
                //     onPressed: () {
                //       Navigator.pushNamed(context, Education.id);
                //     },
                //     child: Container(
                //       width: 280,
                //       height: 40,
                //       child: Center(
                //         child:
                //             Text('Next', style: TextStyle(color: Colors.white)),
                //       ),
                //       decoration: BoxDecoration(
                //           color: kDarkPrimaryColor,
                //           borderRadius: BorderRadius.circular(10)),
                //     )),
                child: ButtonTile(
                  onPress: () {
                    Navigator.pushNamed(context, Education.id);
                  },
                  title: 'Next',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
