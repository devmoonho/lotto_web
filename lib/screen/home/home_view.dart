import 'package:flutter/material.dart';
import 'package:lotto_web/screen/home/home_content_desktop.dart';
import 'package:lotto_web/screen/home/home_content_mobile.dart';
import 'package:lotto_web/widgets/centered_view/centered_view.dart';
import 'package:lotto_web/widgets/navigation_bar/navigation_bar.dart';
import 'package:lotto_web/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:lotto_web/widgets/wave_header/animacion_wave.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            AnimacionWave(),
            Positioned(
              top: 150,
              left: 250,
              height: 500,
              width: 500,
              child: Container(
                child: Image.asset(
                  'assets/images/app.png',
                ),
              ),
            ),
            Positioned(
              right: width * 0.15,
              bottom: height * 0.18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[],
              ),
            ),
            Positioned(
              height: kToolbarHeight,
              width: width,
              child: AppBar(
                elevation: 3.0,
                backgroundColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  '크크크 로또',
                                  style: TextStyle(
                                      fontFamily: 'NanumGothicPen',
                                      fontSize: 50,
                                      color: Colors.orange[300]),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text('기능',
                                style: TextStyle(
                                    fontFamily: 'NanumGothic',
                                    fontSize: 15,
                                    color: Colors.orange[300])),
                            SizedBox(width: 20),
                            Text('다운로드',
                                style: TextStyle(
                                    fontFamily: 'NanumGothic',
                                    fontSize: 15,
                                    color: Colors.orange[300])),
                            SizedBox(width: 20),
                            Text('문의하기',
                                style: TextStyle(
                                    fontFamily: 'NanumGothic',
                                    fontSize: 15,
                                    color: Colors.orange[300])),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
