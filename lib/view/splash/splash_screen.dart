import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/view/splash/splash_provider.dart';
import 'package:webview_flutter/utill/images.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/view/home/home_screen.dart';

import '../../provider/localization_provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _route();
  }

  void _route() {
    Timer(const Duration(seconds: 3), () async {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScaffoldMessenger(
        child: Center(
          child: Consumer<SplashProvider>(builder: (context, splash, child) {
            return Padding(
              padding: EdgeInsets.all(5),
              child: Center(
                child: Image.asset(
                  Images.logo,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
