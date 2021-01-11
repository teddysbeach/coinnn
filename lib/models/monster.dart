import 'package:flutter/material.dart';

class Monster {
  String name;
  Icon image;
  double hp;
  double def;

  Monster(this.name, this.image, this.hp, this.def) {
    print('monster 생성');
    print(this.name);
    name = this.name;
    hp = this.hp;
    def = this.def;
  }

  kill() {
    print('죽입니다');
    hp = 0;
  }

  attack(double attk) {
    hp -= attk - def;
    if (hp <= 0) kill();
  }
}
