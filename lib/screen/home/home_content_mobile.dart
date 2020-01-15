import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lotto_web/widgets/wave_header/animacion_wave.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeContentMobile extends StatefulWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  _HomeContentMobileState createState() => _HomeContentMobileState();
}

class _HomeContentMobileState extends State<HomeContentMobile> {
  final ScrollController _scrollController = new ScrollController();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final double maxHeight = height * 5 + 250; // 2800;

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var mainTextStyle = TextStyle(
            fontFamily: 'NanumGothic',
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white);
        var menuTextStyle = TextStyle(
            fontFamily: 'NanumGothic', fontSize: 12, color: Colors.orange[300]);
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 3.0,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () => _scrollToTop(0),
                  child: Text('크크크 로또',
                      style: TextStyle(
                          fontFamily: 'NanumGothicPen',
                          fontSize: 24,
                          color: Colors.orange)),
                ),
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () =>
                      _scrollToTop(MediaQuery.of(context).size.height + 450),
                  child: Icon(
                    Icons.important_devices,
                    color: Colors.orange,
                  )),
              FlatButton(
                  onPressed: () =>
                      _scrollToTop(MediaQuery.of(context).size.height),
                  child: Icon(
                    Icons.cloud_download,
                    color: Colors.orange,
                  )),
              FlatButton(
                  onPressed: () => _scrollToTop(height * 5),
                  child: Icon(
                    Icons.contacts,
                    color: Colors.orange,
                  )),
            ],
          ),
          body: SingleChildScrollView(
            controller: _scrollController,
            child: Container(
              height: maxHeight,
              child: Stack(
                children: <Widget>[
                  AnimacionWave(),
                  Container(
                    height: 600,
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 10),
                        Container(
                          child: Text(
                            '사용자 요구조건을 반영한 번호생성 \n지난 당첨번호와 최근번호의 \n최신 패턴 구현',
                            style: mainTextStyle,
                          ),
                        ),
                        Flexible(
                          child: Container(
                            width: width,
                            child: Transform.scale(
                              scale: 0.9,
                              child: Image.asset(
                                'assets/images/app.png',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        ButtonTheme(
                          minWidth: 200.0,
                          height: 50.0,
                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Colors.black54,
                            child: Text(
                              "지금 다운로드",
                              style: menuTextStyle.apply(color: Colors.white),
                            ),
                            onPressed: () {
                              _scrollToTop(MediaQuery.of(context).size.height);
                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '회차별 분석자료를 바탕으로',
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(height: 5),
                          Text('검색식을 만들고', style: TextStyle(fontSize: 25)),
                          SizedBox(height: 5),
                          Text('통계 그래프를 활용해 보세요',
                              style: TextStyle(fontSize: 25)),
                          SizedBox(height: 30),
                          Text(
                            '어떤 모바일 기기에서도 사용할 수 있습니다',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            '지금 다운로드해보세요',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 30),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  _launchURL(
                                      'https://play.google.com/store/apps/details?id=dev.moonho.lotto');
                                },
                                child: Container(
                                  height: 50,
                                  child: Image.asset(
                                      'assets/images/playstore.png',
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  _launchURL(
                                      'https://apps.apple.com/us/app/크크크-로또/id1493830665?l=ko&ls=1');
                                },
                                child: Container(
                                  height: 50,
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
                      height: height * 4,
                      width: width,
                      decoration: BoxDecoration(color: Colors.grey[100]),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 50),
                          Text('편리한 기능과 손쉬운 사용',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black)),
                          SizedBox(height: 10),
                          Text(
                            '원하는 번호를 쉽게 생성하고,',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          Text(
                            '패턴을 분석하고, 실행 할 수 있습니다.',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          SizedBox(height: 40),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topCenter,
                                height: 500,
                                width: 500,
                                child: new Swiper.children(
                                  autoplay: true,
                                  index: 0,
                                  pagination: new SwiperPagination(
                                    margin: new EdgeInsets.fromLTRB(
                                        0.0, 0.0, 0.0, 30.0),
                                    builder: new DotSwiperPaginationBuilder(
                                        color: Colors.grey[300],
                                        activeColor: Colors.orangeAccent,
                                        size: 20.0,
                                        activeSize: 20.0),
                                  ),
                                  children: <Widget>[
                                    Image.asset('assets/images/app_f1.png'),
                                    Image.asset('assets/images/app_f2.png'),
                                    Image.asset('assets/images/app_f3.png'),
                                    Image.asset('assets/images/app_f4.png'),
                                    Image.asset('assets/images/app_f5.png'),
                                    Image.asset('assets/images/app_f6.png'),
                                  ],
                                ),
                              ),
                              Container(
                                height: 1400,
                                width: 600,
                                child: GridView.count(
                                  primary: false,
                                  padding: const EdgeInsets.all(20),
                                  crossAxisCount: 1,
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(height: 20),
                                          Container(
                                            height: 100,
                                            child: Icon(
                                                FontAwesomeIcons.searchDollar,
                                                size: 100,
                                                color: Colors.orange),
                                          ),
                                          SizedBox(height: 20),
                                          const Text('당첨 정보 조회',
                                              style: TextStyle(fontSize: 30)),
                                          SizedBox(height: 10),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: const Text(
                                              '실시간 당첨정보 제공하며 이전 당첨 정보와 함께 분석도구를 제공해 드립니다.',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(height: 20),
                                          Container(
                                            height: 100,
                                            child: Icon(FontAwesomeIcons.penAlt,
                                                size: 80, color: Colors.orange),
                                          ),
                                          SizedBox(height: 20),
                                          const Text('로또번호생성',
                                              style: TextStyle(fontSize: 30)),
                                          SizedBox(height: 10),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: const Text(
                                              '전체수 합, 저고비, 홀짝 비율, 연속번호, 번호 위치별 합, 1의수합, 10의수합, 포함수, 제외수, 당첨 제외',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(height: 20),
                                          Container(
                                            height: 100,
                                            child: Icon(
                                                FontAwesomeIcons.chartBar,
                                                size: 80,
                                                color: Colors.orange),
                                          ),
                                          SizedBox(height: 20),
                                          const Text('통계그래프',
                                              style: TextStyle(fontSize: 30)),
                                          SizedBox(height: 10),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: const Text(
                                              '당첨정보와 번호생성에 필요한 모든 자료를 눈으로 쉽게 찾아 볼 수 있습니다.',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(height: 20),
                                          Icon(FontAwesomeIcons.qrcode,
                                              size: 100, color: Colors.orange),
                                          SizedBox(height: 20),
                                          const Text('QR Scan',
                                              style: TextStyle(fontSize: 30)),
                                          SizedBox(height: 10),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: const Text(
                                              'QR Code를 통해 당첨여부를 바로 확인 할 수 있습니다.',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 4 + 460,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 400,
                      width: width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [Colors.orange[600], Colors.orange[100]],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 400,
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                  TextField(
                                    controller: _emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: '이메일',
                                    ),
                                  ),
                                  TextField(
                                    controller: _subjectController,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: '제목',
                                    ),
                                  ),
                                  TextField(
                                    controller: _bodyController,
                                    keyboardType: TextInputType.multiline,
                                    maxLines: 4,
                                    decoration: InputDecoration(
                                      hintText: '메시지',
                                      contentPadding: new EdgeInsets.symmetric(
                                          vertical: 40.0),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  RaisedButton(
                                    child: Text(
                                      '보내기',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    color: Colors.deepOrangeAccent,
                                    onPressed: _sendEmail,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  bottomWidget(width)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Align bottomWidget(double width) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: width,
        color: Colors.orange,
        child: Text(
          '@Copyright 2020. 여문호 Half Lemon. All rights reserved.',
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }

  _sendEmail() async {
    final String _email = 'mailto:' +
        _emailController.text +
        '?subject=' +
        _subjectController.text +
        '&body=' +
        _bodyController.text;
    try {
      await launch(_email);
    } catch (e) {
      throw 'Could not Call Phone';
    }
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _scrollToTop(double pos) {
    _scrollController.animateTo(pos,
        duration: Duration(milliseconds: 1000), curve: Curves.fastOutSlowIn);
  }
}
