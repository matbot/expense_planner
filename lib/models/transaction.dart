import 'package:flutter/foundation.dart';

class Transaction {
  //PROPERTIES
  final String id;
  final String title;
  final double price;
  final DateTime date;

  //CONSTRUCTOR
  Transaction({
    @required this.id,
    @required this.title,
    @required this.price,
    @required this.date
  });
  //METHODS

}
