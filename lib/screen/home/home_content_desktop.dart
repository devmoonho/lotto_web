import 'package:flutter/material.dart';
import 'package:lotto_web/widgets/wave_header/animacion_wave.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeContentDesktop extends StatefulWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  _HomeContentDesktopState createState() => _HomeContentDesktopState();
}

class _HomeContentDesktopState extends State<HomeContentDesktop> {
  final ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var mainTextStyle = TextStyle(
            fontFamily: 'NanumGothic',
            fontSize: 40,
            fontWeight: FontWeight.w500,
            color: Colors.white);
        var menuTextStyle = TextStyle(
            fontFamily: 'NanumGothic', fontSize: 15, color: Colors.orange[300]);
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
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
                        Text('기능', style: menuTextStyle),
                        SizedBox(width: 20),
                        Text('다운로드', style: menuTextStyle),
                        SizedBox(width: 20),
                        Text('문의하기', style: menuTextStyle),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            controller: _scrollController,
            child: Container(
              height: 3000,
              child: Stack(
                children: <Widget>[
                  AnimacionWave(),
                  Container(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 50),
                              height: 800,
                              child: Transform.scale(
                                scale: 0.8,
                                child: Image.asset(
                                  'assets/images/app.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 220),
                                child: Text(
                                  '사용자 요구조건을 \n반영한 번호생성 \n지난 당첨번호와 최근번호의 \n최신 패턴 구현',
                                  style: mainTextStyle,
                                ),
                              ),
                              SizedBox(height: 40),
                              ButtonTheme(
                                minWidth: 200.0,
                                height: 50.0,
                                child: RaisedButton(
                                  textColor: Colors.white,
                                  color: Colors.black54,
                                  child: Text(
                                    "지금 다운로드",
                                    style: menuTextStyle.apply(
                                        color: Colors.white),
                                  ),
                                  onPressed: () {
                                    _scrollToTop(
                                        MediaQuery.of(context).size.height);
                                  },
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: height,
                    child: Container(
                      height: 450,
                      width: width,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '회차별 분석자료를 바탕으로 검색식을 만들고',
                            style: TextStyle(fontSize: 50),
                          ),
                          Text('통계 그래프를 활용해 보세요',
                              style: TextStyle(fontSize: 50)),
                          SizedBox(height: 20),
                          Text(
                            '어떤 모바일 기기에서도 사용할 수 있습니다. 지금 다운로드해보세요',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  print('playstore');
                                },
                                child: Container(
                                  height: 80,
                                  child: Image.asset(
                                      'assets/images/playstore.png',
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  print('appstore');
                                },
                                child: Container(
                                  height: 80,
                                  child: Image.asset(
                                      'assets/images/appstore.png',
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: height + 450,
                    child: Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(color: Colors.grey[100]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '회차별 분석자료를 바탕으로 검색식을 만들고',
                            style: TextStyle(fontSize: 50),
                          ),
                          Text('통계 그래프를 활용해 보세요',
                              style: TextStyle(fontSize: 50)),
                          SizedBox(height: 20),
                          Text(
                            '어떤 모바일 기기에서도 사용할 수 있습니다. 지금 다운로드해보세요',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  print('playstore');
                                },
                                child: Container(
                                  height: 80,
                                  child: Image.asset(
                                      'assets/images/playstore.png',
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(width: 10),
                              InkWell(
                                onTap: () {
                                  print('appstore');
                                },
                                child: Container(
                                  height: 80,
                                  child: Image.asset(
                                      'assets/images/appstore.png',
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _scrollToTop(double pos) {
    _scrollController.animateTo(pos,
        duration: Duration(milliseconds: 1000), curve: Curves.fastOutSlowIn);
  }
}
