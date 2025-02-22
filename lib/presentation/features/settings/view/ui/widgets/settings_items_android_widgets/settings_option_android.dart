import 'package:flutter/material.dart';

class SettingsOptionAndroid extends StatelessWidget{
  final String title;
  final Widget child;

  const SettingsOptionAndroid({super.key, required this.title, required this.child});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: child,
    );
  }
}