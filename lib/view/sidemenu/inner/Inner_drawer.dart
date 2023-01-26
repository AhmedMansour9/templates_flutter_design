import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/utill/color_resources.dart';

import '../../../utill/styles.dart';
import '../../shared/example_one.dart';
import '../../shared/example_three.dart';
import '../../shared/example_two.dart';


class InnerDrawer extends StatefulWidget {
  const InnerDrawer({Key? key}) : super(key: key);

  @override
  _StateInnerDrawer createState() => _StateInnerDrawer();
}
enum Example { one, two, three }

class _StateInnerDrawer extends State<InnerDrawer> with SingleTickerProviderStateMixin {
  bool isOpened = false;
  late AnimationController _animationController;
  late Animation<Color?> _buttonColor;
  late Animation<double> _animateIcon;
  late Animation<double> _translateButton;
  final Curve _curve = Curves.easeOut;
  final double _fabHeight = 56.0;

  Example _currentExample = Example.one;

  @override
  initState() {
    super.initState();
    _animationController =
    AnimationController(vsync: this, duration: const Duration(milliseconds: 500))
      ..addListener(() {
        setState(() {});
      });
    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _buttonColor = ColorTween(
      begin: Colors.white,
      end: Colors.white,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: const Interval(
        0.00,
        1.00,
        curve: Curves.linear,
      ),
    ));
    _translateButton = Tween<double>(
      begin: _fabHeight,
      end: -14.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.0,
        0.75,
        curve: _curve,
      ),
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.colorPrimary,
        centerTitle: true,
        elevation: 10,
        title: Text(
          'Inner Drawer',
          style: medium.copyWith(
              fontSize: 18, color: Colors.white),
        ),

      ),
      body: Stack(
        children: <Widget>[
          _switchWidget(_currentExample),
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Transform(
                  transform: Matrix4.translationValues(
                    0.0,
                    _translateButton.value * 3,
                    0.0,
                  ),
                  child: _item(title: "One", example: Example.one),
                ),
                Transform(
                  transform: Matrix4.translationValues(
                    0.0,
                    _translateButton.value * 2,
                    0.0,
                  ),
                  child: _item(title: "Two", example: Example.two),
                ),
                Transform(
                  transform: Matrix4.translationValues(
                    0.0,
                    _translateButton.value * 1,
                    0.0,
                  ),
                  child: _item(title: "Three", example: Example.three),
                ),
                _toggle(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _switchWidget(Example example) {
    switch (example) {
      case Example.one:
        return ExampleOne();
      case Example.two:
        return ExampleTwo();
      case Example.three:
        return ExampleThree();
    }
  }

  Widget _item({String? title, Example? example}) {
    double val = ((_translateButton.value - 56) / 60).abs();
    Color? color;
    switch (example) {
      case Example.one:
        color = Colors.white;
        break;
      case Example.two:
        color = Colors.white;
        break;
      default:
        color = Colors.white;
    }

    return Opacity(
      opacity: val > 0 ? 1 : 0,
      child: FloatingActionButton(
        backgroundColor: ColorResources.colorPrimary,
        elevation: val,
        heroTag: null,
        onPressed: () {
          setState(() => _currentExample = example!);
          _animate();
        },
        child: Text(title ?? '',
            style: TextStyle(
              fontSize: 11,
              color: color,
            )),
      ),
    );
  }

  Widget _toggle() {
    return FloatingActionButton(
      elevation: 1.5,
      backgroundColor: ColorResources.colorPrimary,
      onPressed: _animate,
      tooltip: 'Toggle',
      heroTag: null,
      child: AnimatedIcon(
        icon: AnimatedIcons.menu_close,
        color: _buttonColor.value,
        progress: _animateIcon,
      ),
    );
  }

  void _animate() {
    if (!isOpened)
      _animationController.forward();
    else
      _animationController.reverse();
    isOpened = !isOpened;
  }
}



