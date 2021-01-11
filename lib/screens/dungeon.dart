import 'package:coinnn/controllers/dungeon_c.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Dungeon extends StatelessWidget {
  DungeonController dungeonController = Get.put(DungeonController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('던전'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Obx(
                () => AspectRatio(
                  aspectRatio: 2.5,
                  child: Container(
                    child: Column(
                      children: [
                        dungeonController.monster.value.image,
                        Text(dungeonController.monster.value.name),
                        Text(dungeonController.monster.value.hp.toString()),
                      ],
                    ),
                  ),
                ),
              ),
              Obx(
                () => AspectRatio(
                  aspectRatio: 2.5,
                  child: Container(
                    child: Column(
                      children: [
                        dungeonController.coin.value.image,
                        Text(dungeonController.coin.value.name),
                        Text(dungeonController.coin.value.toString()),
                      ],
                    ),
                  ),
                ),
              ),
              FlatButton(
                  onPressed: () => dungeonController.attack(),
                  child: Text('hit!!!')),
            ],
          ),
        ),
      ),
    );
  }
}
