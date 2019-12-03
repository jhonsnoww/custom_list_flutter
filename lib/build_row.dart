import 'package:flutter/material.dart';

class PressTest extends StatefulWidget {
  @override
  _PressTestState createState() => _PressTestState();
}

class _PressTestState extends State<PressTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Press Test'),
      ),
      body: GestureDetector(
        onTap: () {
          print('Center Press');
        },
        child: Center(
          child: GestureDetector(
            onTap: () {
              print('Row Press');
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                        onTap: () {
                          print('Txt Press');
                        },
                        child: Text('Click Me')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
