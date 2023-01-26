import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/utill/color_resources.dart';

class FancyDrawer extends StatefulWidget {
  FancyDrawer({Key? key}) : super(key: key);

  @override
  _FancyDrawerState createState() => _FancyDrawerState();
}

class _FancyDrawerState extends State<FancyDrawer>
    with SingleTickerProviderStateMixin {
  late FancyDrawerController _controller;
  String body = "";

  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: const Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(

      child: FancyDrawerWrapper(

        backgroundColor: Colors.white,
        controller: _controller,
        drawerItems: <Widget>[
          InkWell(
            onTap: () {
              selectTap("Home");
            },
            child: const Text(
              "Go to home",
              style: TextStyle(
                fontSize: 18,
                color: ColorResources.colorPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              selectTap("About Us");
            },
            child: const Text(
              "About us",
              style: TextStyle(
                fontSize: 18,
                color: ColorResources.colorPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              selectTap("Our Products");
            },
            child: const Text(
              "Our products",
              style: TextStyle(
                fontSize: 18,
                color: ColorResources.colorPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              selectTap("Support Us");
            },
            child: const Text(
              "Support us",
              style: TextStyle(
                fontSize: 18,
                color: ColorResources.colorPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              selectTap("Log out");
            },
            child: const Text(
              "Log out",
              style: TextStyle(
                fontSize: 18,
                color: ColorResources.colorPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            elevation: 4.0,
            title: const Text(
              "Fancy Drawer",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                _controller.toggle();
              },
            ),
          ),
          body: Center(
            child: Text(body),
          ),
        ),
      ),
    );
  }

  selectTap(String s) {
    setState(() {
      body = s;
      _controller.close();
    });
  }
}
