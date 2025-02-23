import 'package:duma/presentation/common/components_for_android/custom_navigation_drawer/drawer_option.dart';
import 'package:duma/presentation/features/schedule/view/ui/schedule_android/schedule_android_page.dart';
import 'package:duma/presentation/features/settings/view/ui/settings_android/settings_android_page.dart';
import 'package:flutter/material.dart';
import '../../../features/sign_in/view/ui/sign_in_android/sign_in_android_page.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    return Drawer(
      backgroundColor: Color(0xFF5727CE),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              DrawerHeader(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        // временная заглушка
                        CircleAvatar(
                          radius: 30,
                        ),
                        const SizedBox(height: 10),
                        Text('Имя'),
                        const SizedBox(height: 5),
                        Text('Статус')
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        
                      },
                      icon: Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    DrawerOption(
                      title: 'Расписание',
                      onTap: () { 
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ScheduleAndroidPage()),
                        );
                      },
                      child:  Icon(
                        Icons.list_alt_outlined,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    DrawerOption(
                      title: 'Чаты',
                      onTap: () { 
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ScheduleAndroidPage()),
                        );
                      },
                      child: Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    DrawerOption(
                      title: 'Информация об учебном заведении',
                      onTap: () { 
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ScheduleAndroidPage()),
                        );
                      },
                      child: Icon(
                        Icons.info_outline_rounded,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    DrawerOption(
                      title: 'Зачётная книжка/дневник',
                      onTap: () { 
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ScheduleAndroidPage()),
                        );
                      },
                      child: Icon(
                        Icons.menu_book_sharp,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    DrawerOption(
                      title: 'Отчёт об успеваемости',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ScheduleAndroidPage()),
                        );
                      },
                      child: Icon(
                        Icons.bar_chart_sharp,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    DrawerOption(
                      title: 'Настройки',
                      onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SettingsAndroidPage()),
                          );
                        },
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Divider(),
                    ListTile(
                      title: Text(
                        'Выйти из аккаунта',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      trailing: SizedBox(
                        width: 50, // Задайте фиксированную ширину
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignInAndroidPage()),
                          );
                          }, 
                          icon: Icon(
                            Icons.exit_to_app,
                            color: Colors.white,
                          ),
                        ),
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
