import 'package:flutter/material.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'dart:math' as math show pi;

import 'package:provider/provider.dart';
import 'package:webview_flutter/utill/color_resources.dart';
import 'package:webview_flutter/utill/dimensions.dart';
import '../../data/model/menu_model.dart';
import '../../utill/styles.dart';
import 'home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MenuListModel> menuList = [];

  @override
  void initState() {
    super.initState();
    Provider.of<HomeProvider>(context, listen: false).fillMenuListData();
    menuList = Provider
        .of<HomeProvider>(context, listen: false)
        .getMenuList!;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: ColorResources.colorPrimary,
          title: Text(
            'Home',
            style: medium.copyWith(fontSize: 18, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: 120,
          margin: const EdgeInsets.only(
              top: Dimensions.PADDING_SIZE_EXTRA_LARGE),
          child: ListView.builder(
            itemCount: menuList.length,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return itemMenu(context, index);
            },
          ),
        ));
  }


  Widget itemMenu(BuildContext context, int index) {
    return Container(
        // decoration: BoxDecoration(
        //     color: Colors.white,
            // border: Border.all(color: const Color(0xffe8e8e8)),
            // borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        margin: const EdgeInsets.only(top: 5,),
        padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
        child:
        Text(menuList[index].title!,
            style: medium.copyWith(
                color: Colors.black, fontSize: 16,fontWeight: FontWeight.w600)),
        // ExpansionTile(
        //
        //   title: Text(menuList[index].title!,
        //       style: medium.copyWith(color: ColorResources.colorPrimary,fontSize: 16)),
        //   trailing: Icon(
        //     menuList[index].expanded!
        //         ? Icons.arrow_drop_down_circle
        //         : Icons.arrow_drop_down,
        //   color: ColorResources.colorPrimary,),
        //   children: <Widget>[
        //     ListView.builder(
        //       itemCount: menuList[index].subTitlies!.length,
        //       shrinkWrap: true,
        //       scrollDirection: Axis.vertical,
        //       physics: const BouncingScrollPhysics(),
        //       itemBuilder: (context, i) {
        //         return itemNestedMenu(index, context, i);
        //       },
        //     )
    //     ],
    //
    //     onExpansionChanged: (bool expanded)
    // {
    //   setState(() => menuList[index].expanded = expanded);
    // },
    // )
    // ,
    );
  }

  Widget itemNestedMenu(int index, BuildContext context, int i) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0x00ffffff),
          border: Border.all(color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(10.0))),
      margin: const EdgeInsets.only(top: 10, right: 20, left: 20),
      child: GestureDetector(
        onTap: () {
          onCLickItem(i, context, menuList[index].subTitlies![i].id);
        },
        child: Text(
          menuList[index].subTitlies![i].title!,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }

  onCLickItem(int i, BuildContext context, String? id) {
    Navigator.pushNamed(
        context, id!);
  }
}
