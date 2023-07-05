// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:m_health/main.dart';

class lockscreen extends StatelessWidget {
  const lockscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          child: SafeArea(
              child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.keyboard_arrow_left_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Donor ID: 67-1234-5678-9102",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFECF2FE)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(color: Color(0xFF888888)),
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          Text(
                            "Mobile",
                            style: TextStyle(color: Color(0xFF888888)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            "John Doe",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Text(
                            "9123456780",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Death to Preservation Time",
                            style: TextStyle(color: Color(0xFF888888)),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "Age",
                            style: TextStyle(color: Color(0xFF888888)),
                          ),
                          SizedBox(
                            width: 65,
                          ),
                          Text(
                            "Gender",
                            style: TextStyle(color: Color(0xFF888888)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            "8hrs",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 190,
                          ),
                          Text(
                            "32 years",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text("Male",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //flowgraph
                FlowGraph(),

                SizedBox(
                  height: 10,
                ),
                Text(
                  "Storage and Preservation",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "This section captures the storage and preservation of the harvested icon",
                  softWrap: true,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFDDDDDD)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Unique Cornea ID",
                            style: TextStyle(color: Color(0xFF888888)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "45234432",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Number of Days Preserved",
                            style: TextStyle(color: Color(0xFF888888)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "4 Days",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cornea's Current Temperature",
                            style: TextStyle(color: Color(0xFF888888)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "4 Degrees",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Preservation Technique",
                            style: TextStyle(color: Color(0xFF888888)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Organ Culture",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Color(0xFF296DF6),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("prev",style: TextStyle(color: Color(0xFF296DF6)),),
                    SizedBox(
                      width: 120,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => homepage()),
                        );
                      },
                      style: TextButton.styleFrom(
                        fixedSize: Size(180, 40),
                        backgroundColor: Color(0xFF296DF6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
        ),
      ]),
    );
  }
}

class FlowGraph extends StatelessWidget {
  const FlowGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: CustomPaint(
        painter: FlowGraphPainter(context),
      ),
    );
  }
}

class FlowGraphPainter extends CustomPainter {
  final BuildContext context;
  final circleRadius = 20.0;
  final circleColor = const Color(0xFFB2E8D4);
  final circleTextColor = Colors.black;
  final circleTextSize = 20.0;
  final lineThickness = 5.0;
  final lineColor = const Color(0xFFB2E8D4);

  FlowGraphPainter(this.context);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = circleColor;

    final textPaint = TextPainter(
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
      text: TextSpan(
        text: '',
        style: TextStyle(
          color: circleTextColor,
          fontSize: circleTextSize,
        ),
      ),
    );

    final linePaint = Paint();
    linePaint.color = lineColor;
    linePaint.strokeWidth = lineThickness;
    linePaint.strokeCap = StrokeCap.round;

    final circle1 = Offset(50, 60);
    final circle2 = Offset(150, 60);
    final circle3 = Offset(250, 60);
    final circle4 = Offset(350, 60);

    canvas.drawCircle(circle1, circleRadius, paint);
    canvas.drawCircle(circle2, circleRadius, paint);
    canvas.drawCircle(circle3, circleRadius, paint);
    canvas.drawCircle(circle4, circleRadius, paint);

    textPaint.text = TextSpan(
      text: '1',
      style: TextStyle(
        color: circleTextColor,
        fontSize: circleTextSize,
      ),
    );
    textPaint.layout();
    textPaint.paint(
        canvas, circle1 - Offset(circleTextSize / 2, circleTextSize / 2));

    textPaint.text = TextSpan(
      text: '2',
      style: TextStyle(
        color: circleTextColor,
        fontSize: circleTextSize,
      ),
    );
    textPaint.layout();
    textPaint.paint(
        canvas, circle2 - Offset(circleTextSize / 2, circleTextSize / 2));

    textPaint.text = TextSpan(
      text: '3',
      style: TextStyle(
        color: circleTextColor,
        fontSize: circleTextSize,
      ),
    );
    textPaint.layout();
    textPaint.paint(
        canvas, circle3 - Offset(circleTextSize / 2, circleTextSize / 2));

    textPaint.text = TextSpan(
      text: '4',
      style: TextStyle(
        color: circleTextColor,
        fontSize: circleTextSize,
      ),
    );
    textPaint.layout();
    textPaint.paint(
        canvas, circle4 - Offset(circleTextSize / 2, circleTextSize / 2));

    canvas.drawLine(circle1 + Offset(circleRadius, 0),
        circle2 - Offset(circleRadius, 0), linePaint);
    canvas.drawLine(circle2 + Offset(circleRadius, 0),
        circle3 - Offset(circleRadius, 0), linePaint);
    canvas.drawLine(circle3 + Offset(circleRadius, 0),
        circle4 - Offset(circleRadius, 0), linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
