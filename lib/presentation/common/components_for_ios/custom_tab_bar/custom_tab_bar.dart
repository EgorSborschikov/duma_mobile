import 'package:duma/presentation/features/profile/view/ui/profile_ios_page.dart/profile_ios_page.dart';
import 'package:duma/presentation/features/schedule/view/ui/schedule_ios/schedule_ios_page.dart';
import 'package:flutter/cupertino.dart';

class CustomTabBar extends StatefulWidget{
  const CustomTabBar({super.key, });

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: _selectedIndex,
        backgroundColor: CupertinoColors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.square_list
            ),
            label: 'Расписание'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chat_bubble_2_fill
            ),
            label: 'Чаты'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person_crop_circle
            ),
            label: 'Профиль'
          ),
        ],
        activeColor: Color(0xFF5727CE),
        inactiveColor: Color(0xFFD9D9D9),
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ), 
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            switch (index) {
              case 0:
                return ScheduleIosPage();
              /*case 1:
                return  //ChatsScreen();*/
              case 2:
                return ProfileIosPage(); 
              default:
                return Center(child: Text('Content of tab $index'));
            }
          },
        );
      },
    );
  }
}