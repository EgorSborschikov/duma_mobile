import 'package:duma/presentation/common/components_for_android/custom_app_bar/custom_app_bar.dart';
import 'package:duma/presentation/common/components_for_android/custom_navigation_drawer/custom_navigation_drawer.dart';
import 'package:duma/presentation/features/search/view/ui/search_android/schedule_search_android_page.dart';
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
        trailing: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScheduleSearchAndroidPage()),
              );
            }, 
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
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