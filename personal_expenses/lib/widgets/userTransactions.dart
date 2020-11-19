import 'package:flutter/material.dart';

import './newTransaction.dart';
import './transactionList.dart';
import '../models/transactions.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _transactionList = [
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

  void _addNewTransaction(String newTitle, double newAmount) {
    final newTx = Transaction(
      title: newTitle,
      amount: newAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _transactionList.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_transactionList),
      ],
    );
  }
}
