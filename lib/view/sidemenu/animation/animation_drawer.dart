import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../data/model/menu_values_model.dart';
import 'package:side_menu_animation/side_menu_animation.dart';





class AnimationDrawer extends StatelessWidget {
  final _index = ValueNotifier<int>(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SideMenuAnimation.builder(
        builder: (showMenu) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  icon: Icon(Icons.menu, color: Colors.black),
                  onPressed: showMenu),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              centerTitle: true,
              title: ValueListenableBuilder<int>(
                valueListenable: _index,
                builder: (_, value, __) => Text(myMenuValue[value].title ?? '',
                    style: TextStyle(color: Colors.black)),
              ),
            ),
            body: ValueListenableBuilder<int>(
              valueListenable: _index,
              builder: (_, value, __) => IndexedStack(
                index: value - 1,
                children: List.generate(
                  myMenuValue.length - 1,
                      (index) => Screen(itemsScreen: myMenuValue[index + 1].items!),
                ),
              ),
            ),
          );
        },
        enableEdgeDragGesture: true,
        items: myMenuValue
            .map((value) => Icon(value.icon, color: Colors.white, size: 50))
            .toList(),
        selectedColor: Color(0xFFFF595E),
        unselectedColor: Color(0xFF1F2041),
        onItemSelected: (value) {
          if (value > 0 && value != _index.value) _index.value = value;
        },
      ),
    );
  }
}


class Screen extends StatelessWidget {
  const Screen({Key? key, required this.itemsScreen}) : super(key: key);

  final List<MenuValues> itemsScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        itemsScreen.length,
            (index) => Expanded(
          child: Container(
            color: itemsScreen[index].color,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(itemsScreen[index].icon, size: 75, color: Colors.white),
                const SizedBox(height: 10),
                Text(
                  itemsScreen[index].title ?? '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

