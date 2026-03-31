import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/provider/exampleOne_provider.dart';

class ExampleoneScreen extends StatefulWidget {
  const ExampleoneScreen({super.key});

  @override
  State<ExampleoneScreen> createState() => _ExampleoneScreenState();
}

class _ExampleoneScreenState extends State<ExampleoneScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ExampleOneProvider>(context, listen: false);
    log('build');
    return Scaffold(
      appBar: AppBar(title: Text('Example One')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOneProvider>(
            builder: (context, value, child) {
              return Slider(
                min: 0,
                max: 1,
                value: provider.value,
                onChanged: (val) {
                  provider.setValue(val);
                },
              );
            },
          ),
          Consumer<ExampleOneProvider>(
            builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(provider.value),
                      ),
                      child: Center(child: Text('container 1')),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(provider.value),
                      ),
                      child: Center(child: Text('container 1')),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
