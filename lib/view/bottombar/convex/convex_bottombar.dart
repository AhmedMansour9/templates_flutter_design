import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/utill/color_resources.dart';

import '../../../provider/theme_provider.dart';
import '../../../utill/theme/dark_theme.dart';
import '../../../utill/theme/light_theme.dart';
import 'convex_button_demo.dart';
import 'custom_appbar_sample.dart';
import 'default_appbar_demo.dart';
import 'package:provider/provider.dart';


class ConvexBottomBar extends StatefulWidget {
  @override
  State createState() => _State();
}

class _State extends State<ConvexBottomBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).darkTheme ? dark : light,
      initialRoute: "/",
      routes: {
        "/": (_) => HelloConvexAppBar(),
        "/bar": (BuildContext context) => DefaultAppBarDemo(),
        "/custom": (BuildContext context) => CustomAppBarDemo(),
        "/fab": (BuildContext context) => ConvexButtonDemo(),
      },
    );
  }
}

class HelloConvexAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' Convex AppBar'),backgroundColor: ColorResources.colorPrimary, ),
      body: Center(
          child: TextButton(
            child: const Text('Click to show full example'),
            onPressed: () => Navigator.of(context).pushNamed('/bar'),
          )),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: ColorResources.colorPrimary,
        style: TabStyle.react,
        items: const [
          TabItem(icon: Icons.list),
          TabItem(icon: Icons.calendar_today),
          TabItem(icon: Icons.assessment),
        ],
        initialActiveIndex: 1,
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}