import 'package:flutter/material.dart';

import '../constants.dart';
import '../pallette.dart';
import 'package:job_hunting_app/Widgets/button_tile.dart';

class SavedJobs extends StatefulWidget {
  static String id = 'Saved Jobs';
  @override
  _SavedJobsState createState() => _SavedJobsState();
}

class _SavedJobsState extends State<SavedJobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDarkPrimaryColor,
        title: Text(
          'SAVED JOBS',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Oops!',
                style: kTextEditor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'No Saved Jobs!',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kDarkPrimaryColor),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: ButtonTile(
                  title: 'SEARCH SEARCHING',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
