import 'package:duma/presentation/common/components_for_ios/custom_tab_bar/custom_tab_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../features/schedule/view/ui/schedule_ios/schedule_ios_page.dart';

class CustomTopNavigationBar extends StatelessWidget implements ObstructingPreferredSizeWidget {
  final String title;
  final VoidCallback? onTap;
  final bool showLeading;

  CustomTopNavigationBar({
    required this.title,
    this.showLeading = false, 
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: Text(
        title,
        style: TextStyle(
          fontFamily: 'San Francisco',
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: CupertinoColors.black
        ),
      ),
      leading: showLeading
          ? IconButton(
            onPressed: onTap,
            icon: Icon(
              CupertinoIcons.back,
              color: Color(0xFF5727CE),
            ),
          )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}
