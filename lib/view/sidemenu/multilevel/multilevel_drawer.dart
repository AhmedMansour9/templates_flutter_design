import 'package:flutter/material.dart';
import 'package:multilevel_drawer/multilevel_drawer.dart';
import 'package:webview_flutter/utill/color_resources.dart';
import 'package:webview_flutter/utill/images.dart';
import 'package:webview_flutter/view/shared/example_one.dart';



class MultiiLevelDrawer extends StatefulWidget {
  @override
  _MultiiLevelDrawerState createState() => _MultiiLevelDrawerState();
}

class _MultiiLevelDrawerState extends State<MultiiLevelDrawer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer: MultiLevelDrawer(
          backgroundColor: Colors.white,
          rippleColor: Colors.white,
          subMenuBackgroundColor: Colors.grey.shade100,
          divisionColor: Colors.grey,
          header: Container(
            height: size.height * 0.25,
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      Images.avatar,
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("RetroPortal Studio")
                  ],
                )),
          ),
          children: [
            MLMenuItem(
                leading: const Icon(Icons.person),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "My Profile",
                ),
                subMenuItems: [
                  MLSubmenu(
                      onClick: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ExampleOne()));
                      },
                      submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 5")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 6")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.settings),
                trailing: const Icon(Icons.arrow_right),
                content: const Text("Settings"),
                onClick: () {},
                subMenuItems: [MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")), MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2"))]),
            MLMenuItem(
              leading: const Icon(Icons.notifications),
              content: const Text("Notifications"),
              onClick: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ExampleOne()));
              },
            ),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "Payments",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "Payments",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "Payments",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "New Option",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "New Option 1",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "New Option 2",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "New Option 3",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "New Option 4",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "New Option 5",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 1")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {}),
            MLMenuItem(
                leading: const Icon(Icons.payment),
                trailing: const Icon(Icons.arrow_right),
                content: const Text(
                  "New Option 6",
                ),
                subMenuItems: [
                  MLSubmenu(onClick: () {

                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ExampleOne()));
                  }, submenuContent: const Text("Option 1")),

                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 2")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 3")),
                  MLSubmenu(onClick: () {}, submenuContent: const Text("Option 4")),
                ],
                onClick: () {
                }),
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "Multi Level Menu",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
            color: ColorResources.colorPrimary,
            child: const Center()),
      ),
    );
  }
}