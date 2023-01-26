import 'package:animated_stack/animated_stack.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/utill/color_resources.dart';


class AnimatedStackDrawer extends StatelessWidget {
  const AnimatedStackDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: AnimatedStack(
        backgroundColor: Colors.white,
        fabBackgroundColor: ColorResources.colorPrimary,
        foregroundWidget: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
                blurRadius: 30,
                offset: Offset(4, 4),
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return _ItemPlaceholder();
            },
          ),
        ),
        columnWidget: Column(
          children: const <Widget>[
            _IconTile(
              width: 100,
              height: 60,
              iconData: Icons.share,
            ),
            SizedBox(height: 20),
            _IconTile(
              width: 60,
              height: 60,
              iconData: Icons.image,
            ),
            SizedBox(height: 20),
            _IconTile(
              width: 60,
              height: 60,
              iconData: Icons.camera_alt,
            ),
          ],
        ),
        bottomWidget: Container(
          decoration: const BoxDecoration(
            color: Colors.tealAccent,
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          width: 260,
          height: 50,
        ),
      ),
    );
  }
}

class _IconTile extends StatelessWidget {
  final double width;
  final double height;
  final IconData iconData;

  const _IconTile(
      {Key? key,
        required this.width,
        required this.height,
        required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Icon(
        iconData,
        color: const Color(0xffffffff),
      ),
    );
  }
}

class _ItemPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: const Text('Example'),
    );
  }
}


