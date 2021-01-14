// Dart Modules
import 'package:flutter/material.dart';

class HomePageStateful extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageStatefulState();
}

class _HomePageStatefulState extends State<HomePageStateful> {
  final _textStyle = new TextStyle(fontSize: 30);
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
            Text('Add or remove click', style: _textStyle),
            Text('$_count', style: _textStyle),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: _createButtons(_count),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _createButtons(int _count) {
    return Row(
      children: <Widget>[
        SizedBox(width: 5),
        FloatingActionButton(
            onPressed: _remove,
            child: Icon(Icons.remove),
            backgroundColor: Colors.green),
        SizedBox(width: 8),
        FloatingActionButton(
            onPressed: _zero,
            child: Icon(Icons.exposure_zero),
            backgroundColor: Colors.blue),
        SizedBox(width: 8),
        FloatingActionButton(
            onPressed: _add,
            child: Icon(Icons.plus_one),
            backgroundColor: Colors.green)
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }

  void _remove() {
    setState(() => _count--);
  }

  void _zero() {
    setState(() => _count = 0);
  }

  void _add() {
    setState(() => _count++);
  }
}
