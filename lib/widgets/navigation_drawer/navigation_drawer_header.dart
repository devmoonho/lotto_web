import 'package:flutter/material.dart';
import 'package:lotto_web/constants/app_colors.dart';

class NavigationDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text(
            'Skill up now',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          ),
          Text(
            'Tap Here',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
