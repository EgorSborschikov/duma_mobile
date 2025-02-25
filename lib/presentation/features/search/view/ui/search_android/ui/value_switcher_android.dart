import 'package:flutter/material.dart';

class ValueSwitcherAndroid extends StatefulWidget {
  const ValueSwitcherAndroid({super.key});

  @override
  _ValueSwitcherIosState createState() => _ValueSwitcherIosState();
}

class _ValueSwitcherIosState extends State<ValueSwitcherAndroid> {
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
    return Container(
      width: double.infinity,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: decrementValue,
            icon: Icon(Icons.remove_circle_outline_outlined),
          ),
          Expanded(
            child: Center(
              child: Text(
                '$currentValue',
                style: TextStyle(
                  fontSize: 18,
                  decoration: TextDecoration.none,
                  color: Colors.black
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: incrementValue,
            icon: Icon(Icons.add_circle_outline_sharp),
          ),
        ],
      ),
    );
  }
}