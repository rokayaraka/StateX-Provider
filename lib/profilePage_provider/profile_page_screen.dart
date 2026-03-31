import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/profilePage_provider/profile_provider.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({super.key});

  @override
  State<ProfilePageScreen> createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
  bool tapChange = false;
  @override
  Widget build(BuildContext context) {
    final profileProvider = Provider.of<ProfileProvider>(context, listen: false);
    log('build');
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<ProfileProvider>(
              builder: (context, value, child) {
                return Container(
                  height: 200,
                  width: 300,
                  color: Colors.pinkAccent.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        profileProvider.name.toString(),
                        style: TextStyle(fontSize: 20),
                      ),

                      SizedBox(height: 10),

                      Text(
                        profileProvider.email.toString(),
                        style: TextStyle(fontSize: 20),
                      ),

                      SizedBox(height: 10),
                      Text(
                        profileProvider.mobile.toString(),
                        style: TextStyle(fontSize: 20),
                      ),

                      SizedBox(height: 10),
                    ],
                  ),
                );
              },
            ),
            
            Consumer<ProfileProvider>(
              builder: (context, value, child) {
                return TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    profileProvider.setInfo();
                    
                  },
                  child: Text('Change'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
