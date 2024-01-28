import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(Icons.home),
          title: Text(
            "Dashboard",
            style: TextStyle(color: Colors.white),
          ),
        ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage("assets/images/splash-img.jpg"),
                fit: BoxFit.cover,
                opacity: 0.6
            )),
        child: Center(
            child: Text(
              "Happy New Year \n 2024",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontStyle: FontStyle.italic
              ),
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}
