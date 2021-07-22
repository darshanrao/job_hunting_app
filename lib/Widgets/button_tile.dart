import 'package:flutter/material.dart';

import '../pallette.dart';

class ButtonTile extends StatelessWidget {
  final Function onPress;
  final String title;
  ButtonTile({this.onPress, this.title});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: onPress,
        child: Container(
          width: 280,
          height: 40,
          child: Center(
            child: Text(title, style: TextStyle(color: Colors.white)),
          ),
          decoration: BoxDecoration(
            color: kDarkPrimaryColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
        ));
  }
}
