import 'package:flutter/material.dart';
import 'package:lotto_web/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:lotto_web/widgets/navigation_bar/navigation_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ScreenTypeLayout(
        mobile: NavigationBarMobile(),
        tablet: NavigationBarTabletDesktop(),
      ),
    );
  }
}
