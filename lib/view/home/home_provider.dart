import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../data/model/menu_model.dart';

class HomeProvider with ChangeNotifier {
  HomeProvider();

  List<NestedMenuListModel> nestedList = [];
  List<MenuListModel> menuList = [];
  late MenuListModel model;
  late MenuListModel model2;

  int selectedPosition=0;

  List<MenuListModel>? get getMenuList => menuList;
  int  get getSelectedPosition => selectedPosition;

  void fillMenuListData() {

    // Side Menu
    nestedList.add(NestedMenuListModel(id: "100", title: "Sidebar X Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "101", title: "Inner Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "102", title: "Slider Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "104", title: "Shrink Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "105", title: "Hidden Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "106", title: "Advanced Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "107", title: "Animated Stack Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "108", title: "Easy Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "109", title: "Elastic Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "111", title: "KF Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "112", title: "Admin Drawer"));
    nestedList.add(NestedMenuListModel(id: "113", title: "Adaptive Drawer ( Bottom Navigation & Navigation Drawer & Support RTL)"));
    nestedList.add(NestedMenuListModel(id: "114", title: "Animation Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "115", title: "Animation2 Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "117", title: "MultiLevel Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "118", title: "Curved Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "119", title: "Fancy Drawer"));
    nestedList.add(NestedMenuListModel(id: "121", title: "Slide Drawer"));
    nestedList.add(NestedMenuListModel(id: "122", title: "Animated Rail Drawer"));
    nestedList.add(NestedMenuListModel(id: "123", title: "Menu Drawer"));
    nestedList.add(NestedMenuListModel(id: "124", title: "Flurry Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "125", title: "Slidable Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "126", title: "Folding Drawer ( Support  RTL )"));
    nestedList.add(NestedMenuListModel(id: "127", title: "Side Menu Drawer ( Support  RTL )"));
    model = MenuListModel(title: "Side Menu", id: "1", icon: Icons.menu, subTitlies: nestedList,expanded: false);
    menuList.add(model);
    nestedList = [];

    // Bottom Bar
    nestedList.add(NestedMenuListModel(id: "130", title: "Convex Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "131", title: "Persistent Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "132", title: "Curved Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "133", title: "Navy Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "134", title: "Salomon Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "135", title: "Snake Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "136", title: "Google Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "137", title: "Animated Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "138", title: "Expandable Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "139", title: "Custom Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "140", title: "Bubble Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "141", title: "Sliding Clipped"));
    nestedList.add(NestedMenuListModel(id: "142", title: "Fluid Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "143", title: "Water Drop Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "144", title: "Sliding Clipped Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "145", title: "Cuberto Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "146", title: "Floating Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "147", title: "Scroll Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "148", title: "Circular Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "149", title: "Animation Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "150", title: "Animation Notch Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "151", title: "Flashy Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "152", title: "Stylish Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "153", title: "Floating Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "154", title: "Matu Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "155", title: "Floating Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "156", title: "Cool Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "157", title: "Transition Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "158", title: "Fancy Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "159", title: "Circle Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "160", title: "Awesome Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "160", title: "Frosted Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "160", title: "Motion Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "161", title: "Hidable Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "162", title: "Responsive Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "163", title: "Molten Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "164", title: "Circle Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "165", title: "Rolling Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "166", title: "SS Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "167", title: "Scrollable Reorderable Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "168", title: "Flip Box Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "169", title: "Blur Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "170", title: "Curved Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "171", title: "Pinterest Bottom Bar"));
    nestedList.add(NestedMenuListModel(id: "172", title: "Expandable Bottom Bar"));
    model2 = MenuListModel(title: "Bottom  Bar", id: "1", icon: Icons.menu, subTitlies: nestedList,expanded: false);
    menuList.add(model2);

  }





}
