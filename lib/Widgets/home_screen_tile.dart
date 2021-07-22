import 'package:flutter/material.dart';

class HomeScreenTile extends StatelessWidget {
  final Widget child;
  HomeScreenTile({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 130,
      child: child,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
    );
  }
}
