import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.person),
        title: Text("Profile",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Text("Profile Screen", style:TextStyle(fontSize: 40),),
      ),
    );
  }
}