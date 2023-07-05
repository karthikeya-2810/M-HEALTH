// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:m_health/screens/filter_screen.dart';
import 'package:m_health/screens/homebottom.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Builder(builder: (context) {
                return Column(
                
                  children: [
                    SizedBox(height: 50),
                    Row(
                      children: [
                        Icon(Icons.keyboard_arrow_left),
                        SizedBox(width: 25),
                        Text("Review Requests",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        SizedBox(width: 120),
                        Icon(Icons.search),
                        SizedBox(width: 20),
                        IconButton(
                            onPressed: () {
                              _toggleDrawer(context);
                            },
                            icon: Icon(Icons.filter_list))
                      ],
                    ),
                  ],
                );
              }),
            ),
            homebody()
          ],
        ),
        endDrawer: Container(
          padding: EdgeInsets.only(top: 100),
          width: 350,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
            ),
            child: Drawer(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 20, top: 20),
                            child: Text("Filter",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20))),
                        Padding(
                          padding: const EdgeInsets.only(top: 23, left: 230),
                          child: Icon(
                            Icons.close,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    filter_body(),

                    //apply and discard buttons
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                      ),
                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () => print('Apply'),
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all<Size>(
                                Size(90, 20),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.blue),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                            child: Text(
                              'Apply',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 100,
                            height: 38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.blue,
                              ),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Center(
                                child: Text(
                              'Discard',
                              style: TextStyle(color: Colors.blue),
                            )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  void _toggleDrawer(BuildContext context) {
    Scaffold.of(context).openEndDrawer();
  }
}
