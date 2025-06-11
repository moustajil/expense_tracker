import 'package:expens_tracker/enum/category_enum.dart';
import 'package:expens_tracker/expamces_list.dart';
import 'package:expens_tracker/model/expanse.dart';

import 'package:flutter/material.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  final List<Expanse> expensesList = [
    Expanse(title: "Flutter course", amount: 20.20, date: DateTime.now(), categoryEnum: CategoryEnum.work),
    Expanse(title: "Lunch", amount: 12.00, date: DateTime.now(), categoryEnum: CategoryEnum.food),
    Expanse(title: "Transport", amount: 8.50, date: DateTime.now(), categoryEnum: CategoryEnum.travel),
    Expanse(title: "Cinima", amount: 18.50, date: DateTime.now(), categoryEnum: CategoryEnum.travel),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Chart'), // You can replace this with a real chart widget
          ExpensesList(expensesList: expensesList,),
        ],
      ),
    );
  }
}
