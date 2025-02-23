import 'package:duma/presentation/common/components_for_android/custom_app_bar/custom_app_bar.dart';
import 'package:duma/presentation/common/components_for_android/custom_navigation_drawer/custom_navigation_drawer.dart';
import 'package:flutter/material.dart';

class ScheduleAndroidPage extends StatelessWidget{
  const ScheduleAndroidPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: CustomAppBar(
        title: 'Расписание', 
        child: IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
      drawer: CustomNavigationDrawer(),
    );
  }
}