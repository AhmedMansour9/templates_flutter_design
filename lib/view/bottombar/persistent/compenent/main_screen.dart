import "package:flutter/material.dart";
import "package:persistent_bottom_nav_bar/persistent_tab_view.dart";
import 'package:webview_flutter/view/shared/example_three.dart';
import 'package:webview_flutter/view/shared/example_two.dart';

import 'modal_scren.dart';


class MainScreen extends StatelessWidget {
  const MainScreen(
      {final Key? key,
        this.menuScreenContext,
        this.onScreenHideButtonPressed,
        this.hideStatus = false})
      : super(key: key);
  final BuildContext? menuScreenContext;
  final VoidCallback? onScreenHideButtonPressed;
  final bool hideStatus;

  @override
  Widget build(final BuildContext context) => SingleChildScrollView(
    child: SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: TextField(
                decoration: InputDecoration(hintText: "Test Text Field"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
                    context,
                    settings: const RouteSettings(name: "/home"),
                    screen: ExampleTwo(),
                    pageTransitionAnimation:
                    PageTransitionAnimation.scaleRotate,
                  );
                },
                child: const Text(
                  "Go to Second Screen ->",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    useRootNavigator: true,
                    builder: (final context) => Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Exit",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Push bottom sheet on TOP of Nav Bar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    useRootNavigator: false,
                    builder: (final context) => Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Exit",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  );
                },
                child: const Text(
                  "Push bottom sheet BEHIND the Nav Bar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  PersistentNavBarNavigator.pushDynamicScreen(context,
                      screen: SampleModalScreen(), withNavBar: true);
                },
                child: const Text(
                  "Push Dynamic/Modal Screen",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: onScreenHideButtonPressed,
                child: Text(
                  hideStatus
                      ? "Unhide Navigation Bar"
                      : "Hide Navigation Bar",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(menuScreenContext!).pop();
                },
                child: const Text(
                  "<- Main Menu",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    ),
  );
}

class MainScreen2 extends StatelessWidget {
  const MainScreen2({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => Scaffold(
    backgroundColor: Colors.teal,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              PersistentNavBarNavigator.pushNewScreen(context,
                  screen: ExampleThree());
            },
            child: const Text(
              "Go to Third Screen",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Go Back to First Screen",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );
}

class MainScreen3 extends StatelessWidget {
  const MainScreen3({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) => Scaffold(
    backgroundColor: Colors.deepOrangeAccent,
    body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text(
          "Go Back to Second Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}