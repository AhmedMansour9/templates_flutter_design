import 'package:flutter/material.dart';
import 'package:flutter_side_menu/flutter_side_menu.dart';

import '../../../utill/color_resources.dart';



class SideMenuDrawer extends StatelessWidget {
  final _controller = SideMenuController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.colorPrimary,
        title: Text("Side Menu"),
      ),
      body: Row(
        children: [
          SideMenu(
            controller: _controller,
            builder: (data) {
              return SideMenuData(
                header: const Text('Header'),
                items: [
                  SideMenuItemDataTile(
                    isSelected: true,
                    onTap: () {},
                    title: 'Item 1',
                    icon: const Icon(Icons.home),
                  ),
                  SideMenuItemDataTile(
                    isSelected: true,
                    onTap: () {},
                    title: 'Item 2',
                    icon: const Icon(Icons.home),
                  ),
                  SideMenuItemDataTile(
                    isSelected: true,
                    onTap: () {},
                    title: 'Item 3',
                    icon: const Icon(Icons.home),
                  ),
                  SideMenuItemDataTile(
                    isSelected: true,
                    onTap: () {},
                    title: 'Item 4',
                    icon: const Icon(Icons.home),
                  ),
                ],
                footer: const Text('Footer'),
              );
            },
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'body',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _controller.toggle();
                    },
                    child: const Text('change side menu state'),
                  )
                ],
              ),
            ),
          ),
          // SideMenu(
          //   position: SideMenuPosition.right,
          //   builder: (data) => const SideMenuData(
          //     customChild: Text('custom view'),
          //   ),
          // ),
        ],
      ),
    );
  }
}