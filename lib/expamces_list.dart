import 'package:expens_tracker/model/expanse.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<Expanse> expensesList;

  const ExpensesList({super.key, required this.expensesList});

  @override
  Widget build(BuildContext context) {
    return Expanded( // Or use SizedBox(height: someHeight)
      child: ListView.builder(
        itemCount: expensesList.length,
        itemBuilder: (ctx, index) {
          final expense = expensesList[index];
          return ListTile(
            title: Text(expense.title),
            subtitle: Text('${expense.date.toLocal()}'),
            trailing: Text('\$${expense.amount.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}
