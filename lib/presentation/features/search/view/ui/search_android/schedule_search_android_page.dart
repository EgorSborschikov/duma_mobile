import 'package:duma/presentation/common/components_for_android/custom_app_bar/custom_app_bar.dart';
import 'package:duma/presentation/common/components_for_android/custom_bottom_navigation_bar.dart/pages_frame.dart';
import 'package:duma/presentation/features/search/view/ui/search_android/ui/time__range_changer.dart';
import 'package:duma/presentation/features/search/view/ui/search_android/ui/value_switcher_android.dart';
import 'package:flutter/material.dart';

import '../../../../schedule/view/ui/schedule_android/schedule_android_page.dart';

class ScheduleSearchAndroidPage extends StatefulWidget{
  const ScheduleSearchAndroidPage({super.key});

  @override
  State<ScheduleSearchAndroidPage> createState() => _ScheduleSearchAndroidPageState();
}

class _ScheduleSearchAndroidPageState extends State<ScheduleSearchAndroidPage> {
  bool _isAdvancedOptionsEnabled = false;

  @override
  Widget build(BuildContext context) {
    print('Building ScheduleSearchAndroidPage'); // Логирование для отладки
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Настройки поиска расписания', 
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PagesFrame()),
            );
          }, 
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                key: ValueKey('groupName'), // Уникальный ключ
                decoration: InputDecoration(
                  fillColor: Colors.black,
                  labelText: 'Название группы',
                  labelStyle: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                key: ValueKey('institution'), // Уникальный ключ
                decoration: InputDecoration(
                  fillColor: Colors.black,
                  labelText: 'Учебное заведение',
                  labelStyle: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  _isAdvancedOptionsEnabled ? 'Выключить расширенный поиск' : 'Включить расширенный поиск',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Switch(
                  value: _isAdvancedOptionsEnabled,
                  onChanged: (value) {
                    print('Switch toggled: $value'); // Логирование для отладки
                    if (mounted) {
                      setState(() {
                        _isAdvancedOptionsEnabled = value;
                      });
                    }
                  },
                ),
              ),
              if (_isAdvancedOptionsEnabled) ...[
                ListTile(
                  title: Text(
                    'Номер смены',
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.format_list_numbered_rounded,
                      color: Color(0xFF5727CE),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: ValueSwitcherAndroid(),
                            actions: <Widget>[
                              TextButton(
                                child: Text('Сохранить'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
                TextField(
                  key: ValueKey('profile'), // Уникальный ключ
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    labelText: 'Профиль',
                    labelStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                ListTile(
                  title: Text('Время занятий'),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.timelapse,
                      color: Color(0xFF5727CE),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: TimeRangeChanger(),
                            actions: <Widget>[
                              TextButton(
                                child: Text('Сохранить'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
              SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5727EC), 
                  padding: EdgeInsets.symmetric(horizontal: 43, vertical: 10), 
                  minimumSize: Size(263, 43), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Применить',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}