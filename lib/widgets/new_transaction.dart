//PACKAGES
import 'package:flutter/material.dart';

//LIBRARIES
import 'package:expense_planner/widgets/user_transaction.dart';

//CLASS DEFINITION
class NewTransaction extends StatelessWidget {
  //PROPERTIES
  final titleController = TextEditingController();
  final priceController = TextEditingController();

  //METHODS
  final Function addTransaction;

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
//                    onChanged: (value) {
//                      titleInput = value;
//                    },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Price"),
              controller: priceController,
//                    onChanged: (value) => priceInput = value,
            ),
            FlatButton(
              child: Text("Add Transaction"),
              textColor: Colors.green,
              onPressed: () {
                addTransaction(
                    titleController.text, double.parse(priceController.text));
              },
            )
          ],
        ),
      ),
    );
  }
}
