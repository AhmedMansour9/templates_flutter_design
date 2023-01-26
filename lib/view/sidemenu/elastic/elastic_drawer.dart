import 'package:flutter/material.dart';
import 'package:elastic_drawer/elastic_drawer.dart';
import 'package:webview_flutter/utill/color_resources.dart';
import 'package:webview_flutter/view/shared/example_one.dart';
import 'package:webview_flutter/view/shared/example_three.dart';
import 'package:webview_flutter/view/shared/example_two.dart';



class ElastiicDrawer extends StatefulWidget {
  const ElastiicDrawer({Key? key}) : super(key: key);

  @override
  _ElastiicDrawerState createState() => _ElastiicDrawerState();
}

class _ElastiicDrawerState extends State<ElastiicDrawer> {
  @override
  Widget build(BuildContext context) {
    return ElasticDrawer(
      mainColor: Colors.white,
      drawerColor: ColorResources.colorSecondary,
      mainChild: const Center(
        child: Text(
          'MAIN page',
          style: TextStyle(color: Colors.black54, fontSize: 30),
        ),
      ),
      drawerChild: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState?.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState?.push(
                  MaterialPageRoute(builder: (context) =>  ExampleOne()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Example One',
                style: TextStyle(
                    color: Color(0xfff4c20d),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState?.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState?.push(
                  MaterialPageRoute(builder: (context) =>  ExampleTwo()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Example Two',
                style: TextStyle(
                    color: Color(0xff3cba54),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              ElasticDrawerKey.drawer.currentState?.closeElasticDrawer(context);
              ElasticDrawerKey.navigator.currentState?.push(
                  MaterialPageRoute(builder: (context) =>  ExampleThree()));
            },
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Example Three',
                style: TextStyle(
                    color: Color(0xffdb3236),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
