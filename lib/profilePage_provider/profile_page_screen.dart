import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/profilePage_provider/profile_provider.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({super.key});

  @override
  State<ProfilePageScreen> createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
  @override
  Widget build(BuildContext context) {

    final profileProvider = Provider.of<ProfileProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer(builder: (context,value,child){
              return Text(  profileProvider.name.toString(),
            style: TextStyle(fontSize: 20),);
            
            }),
            TextButton(
              onPressed: () {  },
              child: Text('Edit Profile'),
            ),
            SizedBox(height: 10,),

         TextButton(
              onPressed: () {  },
              child: Text(  profileProvider.email.toString(),
            style: TextStyle(fontSize: 20),),
            
            ),
            SizedBox(height: 10,),
            TextButton(
              onPressed: () {  },
              child: Text(  profileProvider.mobile.toString(),
            style: TextStyle(fontSize: 20),),
            
            ),
            SizedBox(height: 10,),
        
          ],
        ),
      ),
     
    );
  }
}