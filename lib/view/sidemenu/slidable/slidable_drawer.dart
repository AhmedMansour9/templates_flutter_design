import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slidable_bar/slidable_bar.dart';
import 'package:webview_flutter/utill/color_resources.dart';



class SlidableDrawer extends StatefulWidget {

  @override
  _SlidableDrawerState createState() => _SlidableDrawerState();
}

class _SlidableDrawerState extends State<SlidableDrawer> {

  final SlidableBarController controller = SlidableBarController(initialStatus: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.colorPrimary,
        title: const Text('Slidable Drawer'),
      ),
      body: Container(
        child: SlidableBar(
          size: 60,
          slidableController: controller,
          side: Side.left,
          clicker: Container(
            color: Colors.green,
            height: 50,
            width: 20,
          ),
          barChildren: const [
          Icon(Icons.favorite_border,size: 50,),
          Icon(Icons.mail_outline,size: 50,),
          Icon(Icons.map,size: 50,),
          Icon(Icons.person_outline,size: 50,),
          ],
          child: Container(
            color: Colors.grey.shade200,
            child: Center(
              child: ElevatedButton(
                child: const Text("reverse status"),
                onPressed: (){
                  controller.reverseStatus();
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}