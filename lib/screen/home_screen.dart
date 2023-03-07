import 'package:empyele/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [TextButton(onPressed: (){}, child: Text('MOHAMMED'))],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
