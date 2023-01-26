import 'package:flutter/material.dart';
import 'package:flurry_navigation/flurry_navigation.dart';
import 'package:flurry_navigation/flurry_menu.dart';
import 'package:webview_flutter/utill/images.dart';
import 'package:webview_flutter/view/shared/example_one.dart';
import 'package:webview_flutter/view/sidemenu/flurry/example_screen.dart';
import 'bottom_section.dart';


class FlurryDrawer extends StatefulWidget {
  @override
  _FlurryDrawerState createState() => _FlurryDrawerState();
}

class _FlurryDrawerState extends State<FlurryDrawer> {
  //Decalre active screen var with the the default screen somewhere accesible to the contentScreen attributes
  var activeScreen = firstscreen;
  Widget build(BuildContext context) {
    return FlurryNavigation(
      // The curve of the screen (Double)
      curveRadius: (MediaQuery.of(context).size.width *MediaQuery.of(context).size.height)/4980,
      // The Icon data of the icon the BottomLeft
      expandIcon: Image.asset(Images.menu),
      // The size of the icon on the BottomLeft (Double)
      iconSize: ((MediaQuery.of(context).size.width * MediaQuery.of(context).size.height)/15420),
      // The content of the screen
      contentScreen: activeScreen,
      menuScreen: FlurryMenu(
        bgColor: Color.fromRGBO(121, 134, 203, 1),
        // The content of the bottom sction of the menu screen
        bottomSection: BottomSection(), //BottomSection() Class is an example of what you can use
        menu: SideMenu(
          items: [
            SideMenuItem(
                id:'hom', //You can set this to whatever you want but dont duplicate it
                icon:Images.avatar, //Set this to the data for the icon of the button
                isSelected: true,
                selectedBtnColor: Color.fromRGBO(38, 198, 218, 1),
                btnShape: BoxShape.rectangle),
            SideMenuItem(
                id: 'sta',
                icon: Images.avatar,
                isSelected: false,
                selectedBtnColor: Color.fromRGBO(38, 198, 218, 1),
                btnShape: BoxShape.rectangle),
            SideMenuItem(
              id:'doc',
              icon:Images.avatar,
              isSelected: false,
              selectedBtnColor: Color.fromRGBO(38, 198, 218, 1),
            ),
            SideMenuItem(
              id:'set',
              icon:Images.avatar,
              isSelected:false,
              selectedBtnColor:Color.fromRGBO(38, 198, 218, 1),
            ),
          ],
        ),
        onMenuItemSelected: (String? itemId) {
          if (itemId == 'hom') {
            setState(() => activeScreen = firstscreen);
          } else if (itemId == 'sta') {
            setState(() => activeScreen = firstscreen);
          } else if (itemId == 'doc') {
            setState(() => activeScreen = firstscreen);
          } else if (itemId == 'loc') {
            setState(() => activeScreen = firstscreen);
          } else if (itemId == 'set') {
            setState(() => activeScreen = firstscreen);
          }
        },
      ),
    );
  }
}