//PACKAGES
import 'package:expense_planner/widgets/user_transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(ExpenseApp());

class ExpenseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expense App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense App"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.lightBlueAccent,
              child: Text("CHART HERE"),
              elevation: 5,
            ),
          ),
          UserTransaction(),
        ],
      ),
    );
  }
}
