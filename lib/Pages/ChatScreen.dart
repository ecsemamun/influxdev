import 'package:flutter/material.dart';

class Chat_Screen extends StatefulWidget {
  const Chat_Screen({super.key});

  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.chat),
        title: Text("Chat",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Button"),
            ElevatedButton(onPressed: () {}, child: null,style:ElevatedButton.styleFrom(
              primary: Colors.yellow, // Background color
              onPrimary: Colors.white, // Text color
              padding: EdgeInsets.all(16.0), // Button padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Button border radius
              ),
            ),)
          ],
        ),
      )
    );
  }
}
