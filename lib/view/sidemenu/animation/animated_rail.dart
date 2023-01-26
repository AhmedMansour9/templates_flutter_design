import 'dart:math';

import 'package:flutter/material.dart';
import 'package:animated_rail/animated_rail.dart';
import 'package:webview_flutter/utill/color_resources.dart';



class AnimatedRailDrawer extends StatefulWidget {
  AnimatedRailDrawer({Key? key}) : super(key: key);
  
  @override
  _AnimatedRailDrawerState createState() => _AnimatedRailDrawerState();
}

class _AnimatedRailDrawerState extends State<AnimatedRailDrawer> {
  _buildTest(String title) {
    return Container(
      color: Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
    );
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
          child: AnimatedRail(
            activeColor: ColorResources.colorPrimary,
            background: hexToColor('#8B77DD'),
            maxWidth: 275,
            width: 100,
            expandedTextStyle: TextStyle(fontSize: 25),
            collapsedTextStyle: TextStyle(fontSize: 17),
            items: [
              RailItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                  screen: _buildTest('Home')),
              RailItem(
                  icon: Icon(Icons.message_outlined),
                  label: 'Messages',
                  screen: _buildTest('Messages')),
              RailItem(
                  icon: Icon(Icons.notifications),
                  label: "Notification",
                  screen: _buildTest('Notification')),
              RailItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                  screen: _buildTest('Profile')),
            ],
          )),
    );
  }
}