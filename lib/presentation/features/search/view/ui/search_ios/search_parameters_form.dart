import 'package:flutter/cupertino.dart';

class SearchParametersOption extends StatelessWidget{
  final String title;
  final Widget child;

  const SearchParametersOption({super.key, required this.title, required this.child});
  
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

class SearchItemsIos extends StatelessWidget{
  final String header;
  final List<SearchParametersOption> options;

  const SearchItemsIos({super.key, required this.header, required this.options});
  
  @override
  Widget build(BuildContext context) {
    return CupertinoFormSection.insetGrouped(
      header: Text(
        header,
        style: TextStyle(
          fontFamily: 'Ubuntu',
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: CupertinoColors.black
        ),
      ),
      children: options.map((option) => option).toList(),
    );
  }
}