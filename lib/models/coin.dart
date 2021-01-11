import 'package:coinnn/models/item.dart';
import 'package:flutter/material.dart';

class Coin {
  String name;
  Icon image;
  double attk;
  List<Item> items;

  Coin(this.name, this.image, this.attk, this.items) {
    print('coin 생성');
    print(this.name);
    this.items.forEach((element) {
      attk += element.attk;
    });
    name = this.name;
    items = this.items;
  }
  double get totalAttk => attk;
}
