import 'package:flutter/cupertino.dart';

class SearchParametersOption extends StatelessWidget{
  final Widget title;
  final Widget child;

  const SearchParametersOption({super.key, required this.title, required this.child});
  
  @override
  Widget build(BuildContext context) {
    return CupertinoFormRow(
      prefix: title,
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