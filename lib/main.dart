import 'package:flutter/material.dart';
import 'package:flutter_catalog/home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30; // integer leny ke liye means without pointing values
    String name =
        "lahore"; // combine alphabets just like name addresss city etc
    bool ismale = true; // true or false ke liye use krte h
    double pi = 3.14; // for pointing values
    num temp =
        30.5; // pointing aur none pointing values dono ke liye use krte hn
    var day =
        "tuesday"; //var means variable iska mtlb h is mn koi bhi value asakti h aur compiler decide krta h
    return MaterialApp(
      home: HomePage(),
    );
  }
}
