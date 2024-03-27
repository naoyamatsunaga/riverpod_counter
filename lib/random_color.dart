import 'dart:math';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'random_color.g.dart';

@riverpod
class RandomColor extends _$RandomColor {
  @override
  Color build() => Colors.black;

  List<Color> colors = [
    Colors.black,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.blue
  ];

  void randomColor() {
    int colorsIndex = Random().nextInt(colors.length);
    state = colors[colorsIndex];
  }
}
