//PACKAGES
import 'package:flutter/material.dart';

//LIBRARIES

//CLASS DEFINITION
class NewTransaction extends StatefulWidget {
  //PROPERTIES
  final Function addTransaction;

  //METHODS
  NewTransaction(this.addTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final priceController = TextEditingController();

  void submitTransaction() {
    final enteredTitle = titleController.text;
    final enteredPrice = double.parse(priceController.text);

    if (enteredTitle.isEmpty || enteredPrice <= 0) {
      return;
    }

    widget.addTransaction(
      titleController.text,
      double.parse(priceController.text),
    );

    Navigator.of(context).pop(); //Close bottom modal after form submit.
  }

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
