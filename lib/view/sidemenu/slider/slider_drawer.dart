import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:webview_flutter/utill/images.dart';

import '../../../utill/color_resources.dart';
import '../../../utill/styles.dart';

class SliderMenuDrawer extends StatefulWidget {
  const SliderMenuDrawer({Key? key}) : super(key: key);

  @override
  SliderMenuDrawerState createState() => SliderMenuDrawerState();
}

class SliderMenuDrawerState extends State<SliderMenuDrawer> {
  final GlobalKey<SliderDrawerState> _sliderDrawerKey =
  GlobalKey<SliderDrawerState>();
  late String title;

  @override
  void initState() {
    title = "Home";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SliderDrawer(
            appBar: SliderAppBar(
              appBarHeight: 80,
              drawerIconColor: Colors.white,
              isTitleCenter: true,
                appBarColor: ColorResources.colorPrimary,
                title:Text(title,
                    style: medium.copyWith(
                        fontSize: 18, color: Colors.white))),
            key: _sliderDrawerKey,
            sliderOpenSize: 179,
            slider: _SliderView(
              onItemClick: (title) {
                _sliderDrawerKey.currentState!.closeSlider();
                setState(() {
                  this.title = title;
                });
              },
            ),
            child:  Container(
              color: Colors.white,
              child: Center(
                child: Text(title),
              ),
            )

        ),
      );
  }
}

class _SliderView extends StatelessWidget {
  final Function(String)? onItemClick;

  const _SliderView({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 60,
              backgroundImage: Image.asset(Images.avatar)
                  .image,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Nick',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...[
            Menu(Icons.home, 'Home'),
            Menu(Icons.add_circle, 'Add Post'),
            Menu(Icons.notifications_active, 'Notification'),
            Menu(Icons.favorite, 'Likes'),
            Menu(Icons.settings, 'Setting'),
            Menu(Icons.arrow_back_ios, 'LogOut')
          ]
              .map((menu) => _SliderMenuDrawerItem(
              title: menu.title,
              iconData: menu.iconData,
              onTap: onItemClick))
              .toList(),
        ],
      ),
    );
  }
}

class _SliderMenuDrawerItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function(String)? onTap;

  const _SliderMenuDrawerItem(
      {Key? key,
        required this.title,
        required this.iconData,
        required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title,
            style: rubikMedium.copyWith(fontSize: 16,color: Colors.black)),
        leading: Icon(iconData, color: Colors.black),
        onTap: () => onTap?.call(title));
  }
}



class Menu {
  final IconData iconData;
  final String title;

  Menu(this.iconData, this.title);
}