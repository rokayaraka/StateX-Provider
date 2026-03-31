import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_learning/my_provider_screen.dart';
import 'package:provider_learning/provider/count_provider.dart';
import 'package:provider_learning/screens/count_example.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
return ChangeNotifierProvider(
  create: (_)=>CountProvider(),
  child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
   
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  CountExample(),
    ),
  
);

 }
}
