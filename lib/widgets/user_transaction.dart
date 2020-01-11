import 'package:expense_planner/widgets/new_transaction.dart';
import 'package:expense_planner/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(id: "1", title: "Coffee", price: 2.75, date: DateTime.now()),
    Transaction(id: "2", title: "Sandwich", price: 4.99, date: DateTime.now())
  ];

  void _addTransaction(String title, double price) {
    final newTransaction = Transaction(
        title: title,
        price: price,
        date: DateTime.now(),
        id: DateTime.now().toString()
    );

    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
