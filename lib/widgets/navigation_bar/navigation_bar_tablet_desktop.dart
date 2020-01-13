import 'package:flutter/material.dart';
import 'package:lotto_web/routing/route_name.dart';
import 'package:lotto_web/widgets/navbar_item/navbar_item.dart';
import 'package:lotto_web/widgets/navigation_bar/navigation_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              NavigationLogo(),
              Text('크크크 로또',
                  style: TextStyle(fontFamily: 'NanumGothicPen', fontSize: 40, )),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('기능', FunctionRoute),
              SizedBox(width: 60),
              NavBarItem('다운로드', DownloadRoute),
              SizedBox(width: 60),
              NavBarItem('문의하기', ContactUsRoute),
            ],
          )
        ],
      ),
    );
  }
}
