import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.settings),
        title: Text("Setting",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Text("Setting Screen", style:TextStyle(fontSize: 40),),
      ),
    );
  }
}