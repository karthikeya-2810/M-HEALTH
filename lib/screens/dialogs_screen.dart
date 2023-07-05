// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// 
void showRejectDialogBox(BuildContext context, Function() onReject) {
  int _otherSelected = 0;
  String? _otherReason;

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Reason for Rejection',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RadioListTile(
                        title: Text('Cornea not available'),
                        value: 0,
                        groupValue: _otherSelected,
                        onChanged: (value) {
                          setState(() {
                            _otherSelected = value as int;
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('Already addressed'),
                        value: 1,
                        groupValue: _otherSelected,
                        onChanged: (value) {
                          setState(() {
                            _otherSelected = value as int;
                          });
                          if (_otherSelected != 2) _otherReason = null;
                        },
                      ),
                      RadioListTile(
                        title: Text('No suitable eye found'),
                        value: 3,
                        groupValue: _otherSelected,
                        onChanged: (value) {
                          setState(() {
                            _otherSelected = value as int;
                          });
                          if (_otherSelected != 2) _otherReason = null;
                        },
                      ),
                      RadioListTile(
                        title: Text('Others'),
                        value: 2,
                        groupValue: _otherSelected,
                        onChanged: (value) {
                          setState(() {
                            _otherSelected = value as int;
                          });
                          if (_otherSelected != 2) _otherReason = null;
                        },
                      ),
                      if (_otherSelected == 2)
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Reason',
                          ),
                          onChanged: (value) {
                            setState(() {
                              _otherReason = value;
                            });
                          },
                        ),
                    ],
                  );
                },
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: Text('Reject'),
                    onPressed: () {
                      if (_otherSelected == 2 && _otherReason == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Please enter a reason for rejection.'),
                          ),
                        );
                      } else {
                       
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Done.The request is rejected'),
                          ),
                        );
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}