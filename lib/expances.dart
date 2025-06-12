import 'package:expens_tracker/enum/category_enum.dart';
import 'package:expens_tracker/widget/expance-list/expamces_list.dart';
import 'package:expens_tracker/model/expanse.dart';
import 'package:expens_tracker/widget/new_expance.dart';

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

  void _addExapnsesOverly(){
    showModalBottomSheet(context: context, builder: (ctx) =>const  NewExpense());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses Tracker'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _addExapnsesOverly,
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('Chart'), // You can replace this with a real chart widget
          ExpensesList(expensesList: expensesList,),
        ],
      ),
    );
  }
}
