import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:webview_flutter/utill/images.dart';


class KFFDrawer extends StatefulWidget {
  KFFDrawer({Key? key}) : super(key: key);

  @override
  _KFFDrawerState createState() => _KFFDrawerState();
}

class _KFFDrawerState extends State<KFFDrawer> with TickerProviderStateMixin {
  late KFDrawerController _drawerController;

  @override
  void initState() {
    super.initState();
    _drawerController = KFDrawerController(
      initialPage: Example( title: 'Main',),
      items: [
        KFDrawerItem.initWithPage(
          text: const Text('MAIN', style: TextStyle(color: Colors.white)),
          icon: const Icon(Icons.home, color: Colors.white),
          page: Example( title: 'Main',),
        ),
        KFDrawerItem.initWithPage(
          text: const Text(
            'CALENDAR',
            style: TextStyle(color: Colors.white),
          ),
          icon: const Icon(Icons.calendar_today, color: Colors.white),
          page: Example( title: 'Calendar',),
        ),
        KFDrawerItem.initWithPage(
          text: const Text(
            'SETTINGS',
            style: TextStyle(color: Colors.white),
          ),
          icon: const Icon(Icons.settings, color: Colors.white),
          page: Example( title: 'Setting',),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KFDrawer(
//        borderRadius: 0.0,
//        shadowBorderRadius: 0.0,
//        menuPadding: EdgeInsets.all(0.0),
//        scrollable: true,
        controller: _drawerController,
        header: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            width: MediaQuery.of(context).size.width * 0.6,
            child: Image.asset(
              Images.avatar,
              alignment: Alignment.centerLeft,
            ),
          ),
        ),
        // footer: KFDrawerItem(
        //   text: const Text(
        //     'SIGN IN',
        //     style: TextStyle(color: Colors.white),
        //   ),
        //   icon: const Icon(
        //     Icons.input,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {
        //     Navigator.of(context).push(CupertinoPageRoute(
        //       fullscreenDialog: true,
        //       builder: (BuildContext context) {
        //         return Example( title: 'Auth',);
        //       },
        //     ));
        //   },
        // ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromRGBO(255, 255, 255, 1.0), Color.fromRGBO(44, 72, 171, 1.0)],
            tileMode: TileMode.repeated,
          ),
        ),
      ),
    );
  }
}


// ignore: must_be_immutable
class Example extends KFDrawerContent {
  Example({Key? key,required this.title});
  final String title;
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(32.0)),
                  child: Material(
                    shadowColor: Colors.transparent,
                    color: Colors.transparent,
                    child: IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                      onPressed: widget.onMenuPressed,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Text(widget.title),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



