import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileOptionIos extends StatelessWidget{
  final String title;
  final VoidCallback onTap;

  const ProfileOptionIos({super.key, required this.title, required this.onTap});
  
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
      child: IconButton(
        onPressed: onTap, 
        icon: Icon(
          CupertinoIcons.chevron_compact_right,
          color: CupertinoColors.inactiveGray,
        ),
      ),
    );
  }
}