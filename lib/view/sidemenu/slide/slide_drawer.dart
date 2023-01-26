import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';
import 'package:slide_drawer/src/item.dart' as s;
import 'package:webview_flutter/utill/images.dart';
 


class SlideeDrawer extends StatefulWidget {
  @override
  _SlideeDrawerState createState() => _SlideeDrawerState();
}

enum SlideDrawerExampleType {
  BASIC,
  BACKGROUND,
  GRADIENT,
  HEAD_DRAWER,
  CONTENT_DRAWER,
  HEAD_CONTENT_DRAWER,
  FULL_DRAWER,
}

class _SlideeDrawerState extends State<SlideeDrawer> {
  Key _appKey = UniqueKey();
  SlideDrawerExampleType type = SlideDrawerExampleType.BASIC;

  bool get _isBasic => type == SlideDrawerExampleType.BASIC;
  bool get _isBackground => type == SlideDrawerExampleType.BACKGROUND;
  bool get _isGradient => type == SlideDrawerExampleType.GRADIENT;
  bool get _isHead => type == SlideDrawerExampleType.HEAD_DRAWER;
  bool get _isContent => type == SlideDrawerExampleType.CONTENT_DRAWER;
  bool get _isHeadContent => type == SlideDrawerExampleType.HEAD_CONTENT_DRAWER;
  bool get _isFullDrawer => type == SlideDrawerExampleType.FULL_DRAWER;

  List<s.MenuItems> get _items => [
    s.MenuItems('Basic',
        onTap: () => _changeType(SlideDrawerExampleType.BASIC)),
    s.MenuItems('Custom Background',
        onTap: () => _changeType(SlideDrawerExampleType.BACKGROUND)),
    s.MenuItems('Custom Gradient',
        onTap: () => _changeType(SlideDrawerExampleType.GRADIENT)),
    s.MenuItems('Custom Header',
        onTap: () => _changeType(SlideDrawerExampleType.HEAD_DRAWER)),
    s.MenuItems('Custom Content',
        onTap: () => _changeType(SlideDrawerExampleType.CONTENT_DRAWER)),
    s.MenuItems('Header and Content',
        onTap: () =>
            _changeType(SlideDrawerExampleType.HEAD_CONTENT_DRAWER)),
    s.MenuItems('Full Drawer',
        onTap: () => _changeType(SlideDrawerExampleType.FULL_DRAWER)),
  ];

  List<s.MenuItems> get _itemsIcon => [
    s.MenuItems('Basic',
        icon: Icons.rss_feed,
        onTap: () => _changeType(SlideDrawerExampleType.BASIC)),
    s.MenuItems('Custom Background',
        icon: Icons.favorite_border,
        onTap: () => _changeType(SlideDrawerExampleType.BACKGROUND)),
    s.MenuItems('Custom Gradient',
        icon: Icons.mail_outline,
        onTap: () => _changeType(SlideDrawerExampleType.GRADIENT)),
    s.MenuItems('Custom Header',
        icon: Icons.map,
        onTap: () => _changeType(SlideDrawerExampleType.HEAD_DRAWER)),
    s.MenuItems('Custom Content',
        icon: Icons.person_outline,
        onTap: () => _changeType(SlideDrawerExampleType.CONTENT_DRAWER)),
    s.MenuItems('Header and Content',
        icon: Icons.alarm,
        onTap: () =>
            _changeType(SlideDrawerExampleType.HEAD_CONTENT_DRAWER)),
    s.MenuItems('Full Drawer',
        icon: Icons.settings,
        onTap: () => _changeType(SlideDrawerExampleType.FULL_DRAWER)),
  ];

  _changeType(type) {
    if (this.type != type)
      setState(() {
        this.type = type;
        _appKey = UniqueKey();
      });
  }

  Widget get _home {
    if (_isBasic) return _basic;
    if (_isBackground) return _background;
    if (_isGradient) return _gradient;
    if (_isHead) return _head;
    if (_isContent) return _content;
    if (_isHeadContent) return _headContent;
    if (_isFullDrawer) return _fullDrawer;
    return _basic;
  }

  Widget get _basic => SlideDrawer(
    child: HomePage(),
    items: _items,

  );

  Widget get _background => SlideDrawer(
    child: HomePage(),
    brightness: Brightness.dark,
    backgroundColor: Colors.blue[900],
    items: _items,
  );

  Widget get _gradient => SlideDrawer(
    child: HomePage(),
    brightness: Brightness.dark,
    backgroundGradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.0, 1.0],
      colors: [
        Color(0xFF000046),
        Color(0xFF1CB5E0),
      ],
    ),
    curve: Curves.easeInOut,
    items: _itemsIcon,
  );

  Widget get _head => SlideDrawer(
    child: HomePage(),
    brightness: Brightness.dark,
    backgroundColor: Colors.blue[800],
    headDrawer: Image.asset(Images.avatar),
    items: _itemsIcon,
  );

  Widget get _content => SlideDrawer(
    child: HomePage(),
    brightness: Brightness.dark,
    contentDrawer: Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          for (var item in _itemsIcon)
            ListTile(
              title: Text(item.title),
              leading: Icon(item.icon),
              onTap: item.onTap,
            ),
        ],
      ),
    ),
    backgroundGradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.0, 1.0],
      colors: [
        Colors.blue[800]!,
        const Color(0xFF1CB5E0),
      ],
    ),
  );

  Widget get _headContent => SlideDrawer(
    child: HomePage(),
    brightness: Brightness.light,
    backgroundColor: const Color(0xffededed),
    alignment: SlideDrawerAlignment.start,
    headDrawer: Image.asset('boys.png'),
    contentDrawer: Container(
      padding: const EdgeInsets.only(left: 10, top: 18),
      child: Column(
        children: [
          for (var item in _itemsIcon)
            ListTile(
              title: Text(item.title),
              leading: Icon(item.icon),
              onTap: item.onTap,
            ),
        ],
      ),
    ),
  );

  Widget get _fullDrawer => SlideDrawer(
    child: HomePage(),
    isRotate: false,
    offsetFromRight: 100,
    drawer: Container(
      color: Colors.teal,
      padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 15),
      child: Theme(
        data: ThemeData(brightness: Brightness.dark),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (var item in _items)
              ListTile(
                title: Text(item.title),
                onTap: item.onTap,
              ),
          ],
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: _appKey,
      title: 'Slide Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: _home,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slide Drawer Demo'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => SlideDrawer.of(context)?.toggle(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}