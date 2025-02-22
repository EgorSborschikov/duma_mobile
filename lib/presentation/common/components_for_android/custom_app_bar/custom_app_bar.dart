import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final Widget child;

  const CustomAppBar({super.key, required this.title, required this.child});
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF5727CE),
      title: Text(title),
      leading: child,
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}