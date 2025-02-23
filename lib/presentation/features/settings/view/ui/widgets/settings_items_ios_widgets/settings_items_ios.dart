import 'package:duma/presentation/features/settings/view/ui/widgets/settings_items_ios_widgets/settings_option_ios.dart';
import 'package:flutter/cupertino.dart';

class SettingsItemsIos extends StatelessWidget{
  final String header;
  final List<SettingsOptionIos> options;

  const SettingsItemsIos({super.key, required this.header, required this.options});
  
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