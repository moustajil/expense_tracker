import 'package:uuid/uuid.dart';

class Expanse {
  static final _uuid = Uuid();

  Expanse({
    String? id,
    required this.title,
    required this.amount,
    required this.date,
  }) : id = id ?? _uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
}
