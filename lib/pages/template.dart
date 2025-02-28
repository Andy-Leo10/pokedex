import 'package:flutter/material.dart';

class Template extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Template'),
      ),
      body: Center(
        child: Text('Sample text!'),
      ),
    );
  }
}