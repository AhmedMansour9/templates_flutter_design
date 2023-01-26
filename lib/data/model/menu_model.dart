import 'package:flutter/material.dart';

class MenuListModel {
  String? id;
  String? title;
  IconData? icon;
  List<NestedMenuListModel>? subTitlies;
  bool expanded = false;

  MenuListModel({ this.title, this.id,this.subTitlies,this.icon,required this.expanded});

}

class NestedMenuListModel {
  String? id;
  String? title;

  NestedMenuListModel({ this.title, this.id});

}

