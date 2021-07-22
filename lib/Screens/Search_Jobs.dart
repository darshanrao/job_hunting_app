import 'package:flutter/material.dart';

import '../constants.dart';
import '../pallette.dart';
import 'package:job_hunting_app/Widgets/button_tile.dart';

class SearchJobs extends StatefulWidget {
  static String id = 'Search Jobs';
  @override
  _SearchJobsState createState() => _SearchJobsState();
}

class _SearchJobsState extends State<SearchJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDarkPrimaryColor,
        title: Text(
          'SEARCH FOR YOUR JOB',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'KEY SKILLS,DESIGNATIONS,COMPANIES',
                style: TextStyle(
                    fontSize: 16,
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
            TextField(
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
            TextField(
              decoration: InputDecoration(
                hintText: 'Location',
                enabledBorder: new UnderlineInputBorder(
                  borderSide: new BorderSide(color: kDarkPrimaryColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kDarkPrimaryColor),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ButtonTile(
                  title: 'Search',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
