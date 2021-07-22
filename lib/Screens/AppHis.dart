import 'package:flutter/material.dart';

import '../constants.dart';
import '../pallette.dart';
import 'package:job_hunting_app/Widgets/button_tile.dart';

class AppHis extends StatefulWidget {
  static String id = 'App History';
  @override
  _AppHisState createState() => _AppHisState();
}

class _AppHisState extends State<AppHis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDarkPrimaryColor,
        title: Text(
          'APPLICATION HISTORY',
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
                'You Have not applied to any jobs in last 60 days',
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
