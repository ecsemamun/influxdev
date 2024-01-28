import 'package:flutter/material.dart';
import 'package:influxdev/Pages/ChatScreen.dart';
import 'package:influxdev/Pages/Dashboard.dart';
import 'package:influxdev/Pages/Profile.dart';
import 'package:influxdev/Pages/Settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currenTab = 0;
  final List<Widget> Screen = [
    Dashboard(),
    Chat_Screen(),
    Profile(),
    Settings(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Dashboard();
                        currenTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currenTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Dashboard",
                          style: TextStyle(
                              color:
                                  currenTab == 0 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Chat_Screen();
                        currenTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          color: currenTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Chat",
                          style: TextStyle(
                              color:
                              currenTab == 1 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
              // Right Tab Bar
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currenTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currenTab == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color:
                              currenTab == 2 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Settings();
                        currenTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color: currenTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          "Settings",
                          style: TextStyle(
                              color:
                              currenTab == 3 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
