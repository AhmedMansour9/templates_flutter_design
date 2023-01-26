import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:folding_menu/folding_menu.dart';
import 'package:webview_flutter/utill/color_resources.dart';
import 'package:webview_flutter/view/shared/example_one.dart';
import 'package:webview_flutter/view/shared/example_three.dart';
import 'package:webview_flutter/view/shared/example_two.dart';

import '../../../utill/images.dart';



class FoldingDrawer extends StatefulWidget {
  @override
  _FoldingDrawerState createState() => _FoldingDrawerState();
}

class _FoldingDrawerState extends State<FoldingDrawer> {
  bool openMenu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.colorPrimary,
        title: const Text("Folding Menu"),
        actions: [
          IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                setState(() {
                  openMenu = !openMenu;
                });
              })
        ],
      ),
      body: Stack(
        children: [
          ScreenContent(),
          AnimatedOpacity(
            opacity: openMenu ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 400),
            child: Container(
              color: Colors.black54,
              child: const Center(child: Text("")),
            ),
          ),
          // Add FoldingMenu as the Last Child to Stack
          FoldingMenu(
              duration: const Duration(milliseconds: 900),
              shadowColor: Colors.black26,
              animationCurve: Curves.decelerate,
              folded: openMenu,
              children: [
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ExampleOne()));
                  },
                  title: const Text("Screen 1"),
                  tileColor: Colors.white,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ExampleTwo()));
                  },
                  title: const Text("Screen 2"),
                  tileColor: Colors.white,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ExampleThree()));
                  },
                  title: const Text("Screen 3"),
                  tileColor: Colors.white,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ExampleTwo(
                            )));
                  },
                  title: const Text("Screen 4"),
                  tileColor: Colors.white,
                ),
              ]),
        ],
      ),
    );
  }
}

class ScreenContent extends StatefulWidget {
  @override
  _ScreenContentState createState() => _ScreenContentState();
}

class _ScreenContentState extends State<ScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                "Music Albums",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Expanded(child: Center()),
              IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
              CircleAvatar(
                child: Image.asset(Images.avatar),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Look for your Interest!",
                fillColor: Colors.grey.shade200,
                filled: true),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              DropdownButton(
                  style: const TextStyle(fontSize: 15, color: Colors.black),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  underline: Container(
                    color: Colors.white,
                  ),
                  items: ["Featured", "Most Rated", "Recent", "Popular"]
                      .map((e) => DropdownMenuItem(
                            child: Text(e),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (newItem) {}),
              IconButton(icon: const Icon(Icons.sort), onPressed: () {})
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView(
              physics: const BouncingScrollPhysics(),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
                  .map((e) => Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset(Images.avatar),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    ));
  }
}
