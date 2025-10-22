import 'package:flutter/material.dart';

class BuahModel {
  final String name;
  final int price;
  final String condition;
  final String image;
  final Color? backgroundColor;
  BuahModel({
    required this.name,
    required this.price,
    required this.condition,
    required this.image,
    this.backgroundColor,
  });
}
