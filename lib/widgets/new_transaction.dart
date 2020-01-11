//PACKAGES
import 'package:flutter/material.dart';

//LIBRARIES
import 'package:expense_planner/widgets/user_transaction.dart';

//CLASS DEFINITION
class NewTransaction extends StatelessWidget {
  //PROPERTIES
  final titleController = TextEditingController();
  final priceController = TextEditingController();
  final Function addTransaction;

  //METHODS
  void submitTransaction() {
    final enteredTitle = titleController.text;
    final enteredPrice = double.parse(priceController.text);

    if (enteredTitle.isEmpty || enteredPrice <= 0) {
      return;
    }

    addTransaction(
      titleController.text,
      double.parse(priceController.text),
    );
  }

  //CONSTRUCTOR
  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
              onSubmitted: (_) => submitTransaction(),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Price"),
              controller: priceController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => submitTransaction(),
            ),
            FlatButton(
              child: Text("Add Transaction"),
              textColor: Colors.green,
              onPressed: submitTransaction,
            ),
          ],
        ),
      ),
    );
  }
}
