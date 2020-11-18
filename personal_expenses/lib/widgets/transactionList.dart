import 'package:flutter/material.dart';

import '../models/transactions.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> transactionList = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.95,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New T-shirt',
      amount: 29.95,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}