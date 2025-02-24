import 'package:flutter/cupertino.dart';

class ValueSwitcherIos extends StatefulWidget {
  const ValueSwitcherIos({super.key});

  @override
  _ValueSwitcherIosState createState() => _ValueSwitcherIosState();
}

class _ValueSwitcherIosState extends State<ValueSwitcherIos> {
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
        CupertinoButton(
          child: Icon(CupertinoIcons.minus_circled),
          onPressed: decrementValue,
        ),
        Expanded(
          child: Center(
            child: Text(
              '$currentValue', 
              style: TextStyle(
                fontSize: 18,
                decoration: TextDecoration.none,
                color: CupertinoColors.black
              ),
            ),
          ),
        ),
        CupertinoButton(
          child: Icon(CupertinoIcons.plus_circled),
          onPressed: incrementValue,
        ),
      ],
    );
  }
}