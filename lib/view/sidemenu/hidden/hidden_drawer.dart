import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/model/screen_hidden_drawer.dart';
import 'package:hidden_drawer_menu/model/item_hidden_menu.dart';
import 'package:webview_flutter/view/shared/example_one.dart';
import 'package:webview_flutter/view/shared/example_two.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

import '../../../utill/styles.dart';


class HiddenDrawer extends StatefulWidget {
  HiddenDrawer({Key? key}) : super(key: key);

  @override
  _HiddenDrawerState createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> itens = [];

  @override
  void initState() {
    itens.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Screen 1",
            baseStyle:
                TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
            colorLineSelected: Colors.teal,
            selectedStyle: TextStyle(
                color: Colors.white.withOpacity(0.8), fontSize: 28.0)),
        ExampleOne()));

    itens.add(ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Screen 2",
            baseStyle:
                TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
            colorLineSelected: Colors.orange,
            selectedStyle: TextStyle(
                color: Colors.white.withOpacity(0.8), fontSize: 28.0)),
        ExampleTwo()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.blueGrey,
      backgroundColorAppBar: Colors.cyan,
      screens: itens,
      tittleAppBar: Text('Hidden Drawer',style:medium.copyWith(fontSize: 18, color: Colors.white),),
      //    typeOpen: TypeOpen.FROM_RIGHT,
      //    disableAppBarDefault: false,
      //    enableScaleAnimin: true,
      //    enableCornerAnimin: true,
      //    slidePercent: 80.0,
      //    verticalScalePercent: 80.0,
      //    contentCornerRadius: 10.0,
      //    iconMenuAppBar: Icon(Icons.menu),
      //    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
      //    whithAutoTittleName: true,
      //    styleAutoTittleName: TextStyle(color: Colors.red),
      //    actionsAppBar: <Widget>[],
      //    backgroundColorContent: Colors.blue,
      //    elevationAppBar: 4.0,
      //    enableShadowItensMenu: true,
      //    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
    );
  }
}
