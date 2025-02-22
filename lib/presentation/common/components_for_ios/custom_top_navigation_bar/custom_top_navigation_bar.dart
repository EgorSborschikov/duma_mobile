import 'package:flutter/cupertino.dart';

class CustomTopNavigationBar extends StatelessWidget implements ObstructingPreferredSizeWidget {
  final String title;
  final String? previousPageTitle;
  final bool showBackButton;

  CustomTopNavigationBar({
    required this.title,
    this.previousPageTitle,
    this.showBackButton = false,
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
      leading: showBackButton
          ? CupertinoNavigationBarBackButton(
              color: Color(0xFF5727CE),
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              previousPageTitle: previousPageTitle != null && previousPageTitle!.length > 8
                  ? 'Назад'
                  : previousPageTitle,
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
