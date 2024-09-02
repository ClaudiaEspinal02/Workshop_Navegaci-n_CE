import 'package:flutter/material.dart';

class ParentToChildScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parent to Child'),
      ),
      body: Center(
        child: ChildWidget(data: 'Hello from Parent!'),
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  final String data;

  ChildWidget({required this.data});

  @override
  Widget build(BuildContext context) {
    return Text(data);
  }
}
