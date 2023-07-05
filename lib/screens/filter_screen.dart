// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class filter_body extends StatelessWidget {
  const filter_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 13.0),
          child: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'priority',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 228, 180, 196)),
                      padding: EdgeInsets.all(10),
                      child: Center(
                          child: Text(
                        '✔️ High',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 192, 154, 140),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Center(child: Text('✔️ Medium')),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Center(child: Text('Low')),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Tissue',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Center(child: Text('Cornea')),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 140,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Center(child: Text('Pre-Cut Cornea')),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text('Sclera')),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Eye Involved',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Center(child: Text('OD')),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 60,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Center(child: Text('OS')),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Hospitals",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    Icon(Icons.keyboard_arrow_up_outlined)
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                check_box(name: "Lv Prasad Hospital"),
                check_box(name: "Lions Blood Bank"),
                check_box(name: "Gowtami Eye Institue"),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Location",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    Icon(Icons.keyboard_arrow_up_outlined)
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                check_box(name: "Chennai,Tamilnadu"),
                check_box(name: "Bangalore ,Karnataka"),
                check_box(name: "Hyderabad,telangana"),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Doctors",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    Icon(Icons.keyboard_arrow_up_outlined)
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                check_box(name: "Dr. Prashant Garg"),
                check_box(name: "Dr. Rajeev Pappuru"),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class check_box extends StatefulWidget {
  final String name;
  const check_box({super.key, required this.name});

  @override
  State<check_box> createState() => _check_boxState();
}

class _check_boxState extends State<check_box> {
   bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(this.widget.name),
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value!;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Colors.blue,
      checkColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
