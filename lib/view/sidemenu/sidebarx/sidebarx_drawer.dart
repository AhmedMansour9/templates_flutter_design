import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:webview_flutter/utill/color_resources.dart';
import 'package:webview_flutter/utill/dimensions.dart';
import 'package:webview_flutter/utill/images.dart';
import 'package:webview_flutter/utill/styles.dart';

import 'example_sidex.dart';

class SideBarX extends StatelessWidget {
  SideBarX({Key? key}) : super(key: key);

  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final isMobileScreen = MediaQuery.of(context).size.width < 600;
    return Scaffold(
      key: _key,
      appBar: isMobileScreen
          ? AppBar(
               actions: [
                 IconButton(
                   onPressed: () {
                    Navigator.pop(context);
                   },
                   icon: const Icon(
                     Icons.close,
                     color: Colors.white,
                   ),
                 ),
               ],
              backgroundColor: ColorResources.colorPrimary,
              centerTitle: true,
              elevation: 10,
              title: Text(
                'Side BarX',
                style: medium.copyWith(
                    fontSize: 18, color: Colors.white),
              ),
              leading: IconButton(
                onPressed: () {
                  _key.currentState?.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            )
          : null,
      drawer: ExampleSidebarX(controller: _controller),
      body: Row(
        children: [
          if (!isMobileScreen) ExampleSidebarX(controller: _controller),
          Expanded(
            child: Center(
              child: ScreensExample(
                controller: _controller,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ExampleSidebarX extends StatelessWidget {
  const ExampleSidebarX({
    Key? key,
    required SidebarXController controller,
  })  : _controller = controller,
        super(key: key);

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: ColorResources.colorGray,
        textStyle: const TextStyle(color: ColorResources.colorPrimary),
        selectedTextStyle: const TextStyle(color: ColorResources.colorPrimary),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: ColorResources.colorSecondary,
          ),
        ),
        iconTheme: const IconThemeData(
          color: ColorResources.colorPrimary,
          size: Dimensions.SIZE_ICONS,
        ),
        selectedIconTheme: const IconThemeData(
          color: ColorResources.colorPrimary,
          size: Dimensions.SIZE_ICONS,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
      footerDivider: ColorResources.colorDivider,
      headerBuilder: (context, extended) {
        return buildHeader();
      },
      items: [
        sideBarItem("Home", Icons.home),
        sideBarItem("Search", Icons.search),
        sideBarItem("People", Icons.people),
        sideBarItem("Favorites", Icons.favorite),
      ],
    );
  }

  SidebarXItem sideBarItem(String label, IconData iconData) {
    return SidebarXItem(
      icon: iconData,
      label: label,
    );
  }

  Widget buildHeader() {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: SizedBox(
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            Images.avatar,
            color: ColorResources.colorPrimary,
          ),
        ),
      ),
    );
  }
}
