//PACKAGES
import 'package:expense_planner/widgets/new_transaction.dart';
import 'package:expense_planner/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_planner/models/transaction.dart';

void main() => runApp(ExpenseApp());

class ExpenseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expense App",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.amberAccent,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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

  void _openNewTransaction(BuildContext buttonContext) {
    showModalBottomSheet(
      context: buttonContext,
      builder: (builderContext) {
        return NewTransaction(_addTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Expense App"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => _openNewTransaction(context),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Theme.of(context).primaryColorLight,
                child: Text("CHART HERE"),
                elevation: 5,
              ),
            ),
            TransactionList(_userTransactions),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _openNewTransaction(context),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
