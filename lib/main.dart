//PACKAGES
import 'package:flutter/material.dart';
//LIBRARIES
import './transaction.dart';

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
  final List<Transaction> transactions = [
    Transaction(id: "1", title: "Coffee", price: 2.75, date: DateTime.now()),
    Transaction(id: "2", title: "Sandwich", price: 4.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          Card(
            color: Colors.redAccent,
            child: Text("TEXTTEXTTEXT"),
          ),
        ],
      ),
    );
  }
}
