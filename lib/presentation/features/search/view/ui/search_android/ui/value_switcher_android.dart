import 'package:flutter/material.dart';

class ValueSwitcherAndroid extends StatefulWidget {
  const ValueSwitcherAndroid({super.key});

  @override
  _ValueSwitcherState createState() => _ValueSwitcherState();
}

class _ValueSwitcherState extends State<ValueSwitcherAndroid> {
  int currentValue = 1;

  void incrementValue() {
    setState(() {
      if (currentValue < 100) {
        currentValue++;
      }
    });
  }

  void decrementValue() {
    setState(() {
      if (currentValue > 1) {
        currentValue--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.remove_circle),
          onPressed: decrementValue,
        ),
        Expanded(
          child: Center(
            child: Text(
              '$currentValue',
              style: TextStyle(
                fontSize: 18,
                decoration: TextDecoration.none,
                color: Colors.black,
              ),
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.add_circle),
          onPressed: incrementValue,
        ),
      ],
    );
  }
}
