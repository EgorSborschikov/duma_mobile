import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatIosPage extends StatefulWidget {
  const ChatIosPage({super.key});

  @override
  _ChatIosPageState createState() => _ChatIosPageState();
}

class _ChatIosPageState extends State<ChatIosPage> {
  bool _isScrolled = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      child: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollUpdateNotification) {
            setState(() {
              _isScrolled = scrollNotification.metrics.pixels > 50;
            });
          }
          return false;
        },
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text(
                'Чаты',
                style: TextStyle(
                  fontFamily: 'San Francisco',
                  fontWeight: FontWeight.w700,
                  fontSize: _isScrolled ? 20 : 34,
                  color: CupertinoColors.black,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.add,
                      color: Color(0xFF5727CE),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.search,
                      color: Color(0xFF5727CE),
                    ),
                  ),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    // Добавьте ваши элементы списка здесь
                    return Container(
                      height: 50,
                      color: CupertinoColors.white,
                      child: Center(child: Text('Элемент #$index')),
                    );
                  },
                  childCount: 20, // Количество элементов в списке
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}