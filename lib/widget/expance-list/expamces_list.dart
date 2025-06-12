import 'package:expens_tracker/model/expanse.dart';
import 'package:expens_tracker/widget/expance-list/expance_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<Expanse> expensesList;
  final Function(Expanse expense)? onRemoveExpense;

  const ExpensesList({super.key, required this.expensesList, required this.onRemoveExpense});

  @override
  Widget build(BuildContext context) {
    return Expanded( // Or use SizedBox(height: someHeight)
      child: ListView.builder(
        itemCount: expensesList.length,
        itemBuilder: (ctx, index) {
          final expense = expensesList[index];
          return Dismissible(background: Container(color: Colors.red,),key: ValueKey(expense),onDismissed: (direction){
            
            onRemoveExpense!(expense);
            
          },child: ExpanceItem(expanse: expense,));
        },
      ),
    );
  }
}
