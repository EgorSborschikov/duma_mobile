import 'package:duma/presentation/features/schedule/view/ui/schedule_android/schedule_android_page.dart';
import 'package:duma/presentation/features/settings/view/ui/settings_android/settings_android_page.dart';
import 'package:flutter/material.dart';

import 'custom_bottom_navigation_bar.dart';

class PagesFrame extends StatefulWidget{
  const PagesFrame({super.key});

  @override
  State<PagesFrame> createState() => _PagesFrameState();
}

class _PagesFrameState extends State<PagesFrame> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(_selectedIndex),
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: _onItemTapped
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  Widget _buildBody(int index) {
    switch (index) {
      case 0:
        return ScheduleAndroidPage();
      case 1:
        return Center(child: Text('Favorites Screen'));
      case 2:
        return SettingsAndroidPage();
      default:
        return Container();
    }
  }
}