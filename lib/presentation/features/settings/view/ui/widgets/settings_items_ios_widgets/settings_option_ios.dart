import 'package:flutter/cupertino.dart';

class SettingsOptionIos extends StatelessWidget{
  final String title;
  final Widget child;

  const SettingsOptionIos({super.key, required this.title, required this.child, });
  
  @override
  Widget build(BuildContext context) {
    return CupertinoFormRow(
      prefix: Text(
        title,
        style: TextStyle(
          fontFamily: 'San Francisco',
          fontWeight: FontWeight.normal,
          fontSize: 14,
          color: CupertinoColors.inactiveGray
        ),
      ),
      child: child
    );
  }
}