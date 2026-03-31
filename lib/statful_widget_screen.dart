import 'dart:developer';

import 'package:flutter/material.dart';

class StatfulWidgetScreen extends StatefulWidget {
  const StatfulWidgetScreen({super.key});

  @override
  State<StatfulWidgetScreen> createState() => _StatfulWidgetScreenState();
}

class _StatfulWidgetScreenState extends State<StatfulWidgetScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    log('build');
    return Scaffold(
      appBar: AppBar(title: Text("Subscribe")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
          Container(
            child: Center(
              child: Text(count.toString(), style: TextStyle(fontSize: 50)),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          print(count);
          setState(() {
            
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
