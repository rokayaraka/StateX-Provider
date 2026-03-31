import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

 int x=20;

  @override
  Widget build(BuildContext context) {
    log('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Learning'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(child: Text(x.toString(),style: TextStyle(fontSize: 50),)),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        x++;
        print(x);
      },
      
      child: Icon(Icons.add),
      ),
   
    );
  }
}