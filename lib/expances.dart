import 'package:flutter/material.dart';

class ExpancesScreen extends StatefulWidget {
  const ExpancesScreen({super.key});

  @override
  State<ExpancesScreen> createState() => _ExpancesScreenState();
}

class _ExpancesScreenState extends State<ExpancesScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Chart'),Text('Expances .....')
      ],
    );
  }
}