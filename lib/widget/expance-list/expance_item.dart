import 'package:expens_tracker/model/expanse.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExpanceItem extends StatelessWidget {
  Expanse expanse;
  ExpanceItem({super.key,required this.expanse});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
        ),
        child: ListTile(
          title: Text(expanse.title),
          subtitle: Text('${expanse.date.toLocal()}'),
          trailing: Text('\$${expanse.amount.toStringAsFixed(2)}'),
          leading: CircleAvatar(
            child: Text(expanse.categoryEnum.name.substring(0, 1).toUpperCase()),
          ),
        ),
      ),
    );
  }
}