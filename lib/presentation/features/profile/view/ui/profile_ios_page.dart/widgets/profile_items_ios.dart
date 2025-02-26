import 'package:duma/presentation/features/profile/view/ui/profile_ios_page.dart/widgets/profile_option_ios.dart';
import 'package:flutter/cupertino.dart';

class ProfileItemsIos extends StatelessWidget{
  final String header;
  final List<ProfileOptionIos> options;

  const ProfileItemsIos({super.key, required this.header, required this.options});
  
  @override
  Widget build(BuildContext context) {
    return CupertinoFormSection.insetGrouped(
      header: Text(
        header,
        style: TextStyle(
          fontFamily: 'San Francisco',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: CupertinoColors.black
        ),
      ),
      children: options.map((option) => option).toList(),
    );
  }
}