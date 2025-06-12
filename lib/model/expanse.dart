import 'package:expens_tracker/enum/category_enum.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';


const CategoryIcons = {
  CategoryEnum.food: Icons.fastfood,
  CategoryEnum.travel: Icons.airplanemode_active,
  CategoryEnum.work: Icons.work,
  CategoryEnum.leisure: Icons.movie,
};


class Expanse {
  static final _uuid = Uuid();

  Expanse({
    String? id,
    required this.title,
    required this.amount,
    required this.date,
    required this.categoryEnum
  }) : id = id ?? _uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final CategoryEnum categoryEnum;

  String get formattedDate {
    return '${date.day}/${date.month}/${date.year}';
  }
}
