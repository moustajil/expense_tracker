import 'package:expens_tracker/enum/category_enum.dart';
import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  DateTime? _selectedDate;
  CategoryEnum? _category = CategoryEnum.food;

  void _pickDate() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  void _submiteExpanceData(){}

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Title Input
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(labelText: 'Title'),
          ),

          // Amount + Date Picker
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(labelText: 'Amount'),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                _selectedDate == null
                    ? 'No date selected'
                    : '${_selectedDate!.toLocal()}'.split(' ')[0],
              ),
              IconButton(
                icon: const Icon(Icons.calendar_today),
                onPressed: _pickDate,
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Category Dropdown + Cancel Button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              DropdownButton<CategoryEnum>(
                value: _category,
                hint: const Text('Select Category'),
                items: CategoryEnum.values.map(
                  (category) => DropdownMenuItem<CategoryEnum>(
                    value: category,
                    child: Text(category.name),
                  ),
                ).toList(),
                onChanged: (item) {
                  if (item != null) {
                    setState(() {
                      _category = item;
                    });
                  }
                },
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: _submiteExpanceData,
                child: const Text('Add Expense'),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
