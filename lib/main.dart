import 'package:flutter/material.dart';
import 'package:lotto_web/screen/home/home_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '크크크 로또',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'NanumGothic'),
      ),
      home: HomeView(),
    );
  }
}
