import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

class MyProviderScreen extends StatefulWidget {
  const MyProviderScreen({super.key});

  @override
  State<MyProviderScreen> createState() => _MyProviderScreenState();
}

class _MyProviderScreenState extends State<MyProviderScreen> {
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
          // Text(DateTime.now().toString()),
           Center(
              child: Text('${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}',
               style: TextStyle(fontSize: 50)),
            ),
          
           Center(
              child: Text(count.toString(), style: TextStyle(fontSize: 50)),
            ),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          print(count);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
