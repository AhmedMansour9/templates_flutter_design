import 'package:flutter/material.dart';
import 'admin_drawer.dart';

class DashboardPage extends StatelessWidget {
  final String title;
  DashboardPage(this.title);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/',
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child:  Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
