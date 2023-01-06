import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget { 
  final List <Transaction> transactions;
  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map(
        (tx) {
          return Card(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple,
                      width: 2, // Dah somk el border nafso
                    ),
                  ),
                  child: Text(
                    '\$${tx.amount}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tx.title,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      DateFormat.yMMMd().format(tx.date),
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ).toList(),
    );
  }
}
