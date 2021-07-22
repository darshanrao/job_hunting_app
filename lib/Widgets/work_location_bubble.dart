import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pallette.dart';

class WorkLocationBubble extends StatelessWidget {
  final String title;
  WorkLocationBubble({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 160,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 10,
              ),
              Center(
                  child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: kDarkPrimaryColor,
                ),
              )),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Icon(
                  CupertinoIcons.xmark,
                  size: 16,
                ),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: kLightPrimaryColor,
            borderRadius: BorderRadius.all(Radius.circular(16))),
      ),
    );
  }
}
