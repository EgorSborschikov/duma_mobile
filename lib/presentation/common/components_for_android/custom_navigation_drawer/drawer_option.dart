import 'package:flutter/material.dart';

class DrawerOption extends StatelessWidget{
  final String title;
  final Widget child;

  const DrawerOption({super.key, required this.title, required this.child});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: child,
    );
  }
}