// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:m_health/screens/home.dart';
import 'package:m_health/screens/opening_screen.dart';

void main() {
  runApp(const MaterialApp(
     debugShowCheckedModeBanner: false,
    home: lockscreen(),
  ));
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 100, 243),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 90),
          Padding(
            padding: EdgeInsets.only(left: 22.0),
            child: Text(
              'Manage organ request',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(
              left: 22.0,
            ),
            child: Text(
              'Lab Admin',
              style: TextStyle(
                  fontSize: 22.0, color: Color.fromARGB(225, 255, 255, 255)),
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 22.0),
            child: Text(
              '• Made the listening scalable',
              style: TextStyle(fontSize: 18.0, color: Colors.white60),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(left: 22.0),
            child: Text(
              '• Improved the filter',
              style: TextStyle(fontSize: 18.0, color: Colors.white60),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(left: 22.0),
            child: Text(
              '• Introduced new feature',
              style: TextStyle(fontSize: 16.0, color: Colors.white60),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(left: 50.0),
            child: Text(
              '- Search',
              style: TextStyle(fontSize: 16.0, color: Colors.white60),
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(left: 50.0),
            child: Text(
              '- Communication',
              style: TextStyle(fontSize: 16.0, color: Colors.white60),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(left: 22.0),
            child: Text(
              '• Improved the visuals',
              style: TextStyle(fontSize: 16.0, color: Colors.white60),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
              padding: EdgeInsets.only(left: 22.0),
              child: ElevatedButton(
                child: Text('Continue'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.blue,
                  textStyle: TextStyle(fontSize: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => home()),
                  );
                },
              ))
        ],
      ),
    );
  }
}
