import 'package:flutter/material.dart';
import 'package:lotto_web/widgets/navigation_bar/navigation_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavigationLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Episodes',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                'About',
                style: TextStyle(fontSize: 18),
              ),
            ],
          )
        ],
      ),
    );
  }
}
