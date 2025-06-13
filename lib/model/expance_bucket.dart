import 'package:expens_tracker/enum/category_enum.dart';
import 'package:expens_tracker/model/expanse.dart';

class ExpanceBucket {
  late final CategoryEnum categoryEnum;
  late final List<Expanse> expenses;

  ExpanceBucket({required this.expenses,required this.categoryEnum});
  ExpanceBucket.forCategory(List<Expanse> allExpenses, this.categoryEnum) {
    expenses = allExpenses.where((expense) => expense.categoryEnum == categoryEnum).toList();
  }
  double get totalExpenses {
    double total = 0.0;
    for (var expense in expenses) {
      total += expense.amount;
    }
    return total;
  }
      
}