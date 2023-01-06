import 'package:flutter/material.dart';

import './widgets/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start, // from top to bottom in (column)
        crossAxisAlignment: CrossAxisAlignment.stretch, // from left to right
        children: [
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('Charts'),
              elevation: 5,
            ),
          ),
          UserTransactions(),
        ],
      ),
    );
  }
}
