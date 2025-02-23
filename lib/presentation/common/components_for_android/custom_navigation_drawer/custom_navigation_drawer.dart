import 'package:duma/presentation/common/components_for_android/custom_navigation_drawer/drawer_option.dart';
import 'package:duma/presentation/features/schedule/view/ui/schedule_android/schedule_android_page.dart';
import 'package:flutter/material.dart';

import '../../../features/sign_in/view/ui/sign_in_android/sign_in_android_page.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              DrawerHeader(
                child: Container(),
              ),
              Expanded(
                child: ListView(
                  children: [
                    DrawerOption(
                      title: 'Расписание',
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ScheduleAndroidPage()),
                          );
                        },
                        icon: Icon(Icons.space_dashboard_outlined),
                      ),
                    ),
                    const SizedBox(height: 10),
                    DrawerOption(
                      title: 'Чаты',
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ScheduleAndroidPage()),
                          );
                        },
                        icon: Icon(Icons.message_rounded),
                      ),
                    ),
                    const SizedBox(height: 10),
                    DrawerOption(
                      title: 'Информация об учебном заведении',
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ScheduleAndroidPage()),
                          );
                        },
                        icon: Icon(Icons.info_outline),
                      ),
                    ),
                    const SizedBox(height: 10),
                    DrawerOption(
                      title: 'Зачётная книжка/дневник',
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ScheduleAndroidPage()),
                          );
                        },
                        icon: Icon(Icons.menu_book_rounded),
                      ),
                    ),
                    const SizedBox(height: 10),
                    DrawerOption(
                      title: 'Отчёт об успеваемости',
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ScheduleAndroidPage()),
                          );
                        },
                        icon: Icon(Icons.chrome_reader_mode_rounded),
                      ),
                    ),
                    const SizedBox(height: 10),
                    DrawerOption(
                      title: 'Настройки',
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ScheduleAndroidPage()),
                          );
                        },
                        icon: Icon(Icons.settings),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Divider(),
                    ListTile(
                      title: Text('Выйти из аккаунта'),
                      trailing: SizedBox(
                        width: 50, // Задайте фиксированную ширину
                        child: Icon(Icons.exit_to_app),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
