import 'package:flutter/material.dart';
import 'package:lotto_web/screen/home/home_content_desktop.dart';
import 'package:lotto_web/screen/home/home_content_mobile.dart';
import 'package:lotto_web/widgets/centered_view/centered_view.dart';
import 'package:lotto_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:lotto_web/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
              ? NavigationDrawer()
              : null,
          backgroundColor: Colors.white,
          body: CenteredView(
            child: Column(
              children: <Widget>[
                NavigationBar(),
                Expanded(
                  child: ScreenTypeLayout(
                    mobile: HomeContentMobile(),
                    desktop: HomeContentDesktop(),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
