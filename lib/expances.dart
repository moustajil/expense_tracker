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
    
    showModalBottomSheet(
      isScrollControlled: true,
      context: context, builder: (ctx) =>NewExpense(
      
      onAddExpense: _addExpense,
    ));
  }

  void _addExpense(Expanse expense) {
    setState(() {
      expensesList.add(expense);
    });
  }

  void _removeExpense(Expanse expense) {
    final expenseIndex = expensesList.indexOf(expense);
    setState(() {
      expensesList.remove(expense);
    });
    ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('${expense.title} removed'),action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  setState(() {
                  });
                },
              ),behavior: SnackBarBehavior.floating,backgroundColor: Colors.redAccent,),
            );
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child:  Text('Chart',style: Theme.of(context).textTheme.bodyLarge,)), // You can replace this with a real chart widget
          expensesList.isEmpty ? Center(child: Text('The List Of Expancive is Empty')) : ExpensesList(expensesList: expensesList, onRemoveExpense: _removeExpense),
        ],
      ),
    );
  }
}
