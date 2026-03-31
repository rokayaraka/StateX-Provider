import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     final countProvider=Provider.of<CountProvider>(context,listen: false);
    Timer.periodic(Duration(seconds: 3), (timer){
       countProvider.setCount();
    });
   
  }



  @override
  Widget build(BuildContext context) {

    final countProvider=Provider.of<CountProvider>(context,listen: false);
    log('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Example'),
      ),
      body: Center(
        child:Consumer<CountProvider>(builder: (context,value,child){
           log('Only this widget build');
          return  Text(countProvider.count.toString(),
        style: TextStyle(fontSize: 80,),
        );
      
        }),
        // child: Text(countProvider.count.toString(),
        // style: TextStyle(fontSize: 80,),
        // ),
        ),
      floatingActionButton: FloatingActionButton(
      onPressed: (){
        countProvider.setCount();
       
      },
      child: Icon(Icons.add),
      ),
    );
  }
}