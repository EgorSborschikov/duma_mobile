import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget child;

  const CustomAppBar({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF5727CE),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Roboto',
          fontSize: 20,
        ),
      ),
      centerTitle: false,
      leading: SizedBox(
        width: 50, // Задайте ширину
        height: 50, // Задайте высоту
        child: child,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
