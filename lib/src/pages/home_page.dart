// Dart Modules
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final textStyle = new TextStyle(fontSize: 30);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First App'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Clicks Counter', style: textStyle),
            Text('$_count', style: textStyle),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => _count++,
          child: Icon(Icons.add),
          backgroundColor: Colors.green),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
