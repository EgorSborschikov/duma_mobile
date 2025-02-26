import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget{
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavigationBar({super.key, required this.onItemTapped,});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Color(0xFF5727CE),
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: TextStyle(
        fontSize: 12,
      ),
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
          widget.onItemTapped(index);
        });
      },
      items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt_outlined),
          label: 'Расписание',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Чаты',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Настройки',
        ),
      ],
    );
  }
}