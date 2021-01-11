import 'package:coinnn/screens/dungeon.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() => runApp(Loot());

class Loot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Dungeon(),
    );
  }
}