import 'package:coinnn/models/coin.dart';
import 'package:coinnn/models/monster.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DungeonController extends GetxController {
  Rx<Monster> monster = Monster(
          '무려하트',
          Icon(
            Icons.favorite,
            size: 100,
          ),
          5000,
          30)
      .obs;
  Rx<Coin> coin = Coin('500원짜리', Icon(Icons.monetization_on), 500, []).obs;

  attack() {
    monster.value.attack(coin.value.attk);
    monster.refresh();
  }
}
