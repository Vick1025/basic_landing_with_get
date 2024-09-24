import 'package:flutter/material.dart';

class NaviItemEntity{
  IconData iconData;
  String toPage;

  NaviItemEntity(
      {
        this.iconData = Icons.add,
        this.toPage = "",
      });
}