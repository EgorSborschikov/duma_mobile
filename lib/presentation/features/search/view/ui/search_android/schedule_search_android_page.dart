import 'package:duma/presentation/features/search/view/ui/search_android/ui/time__range_changer.dart';
import 'package:duma/presentation/features/search/view/ui/search_android/ui/value_switcher_android.dart';
import 'package:flutter/material.dart';

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
    return Container(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Настройки поиска расписания',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
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
              /*ListTile(
                key: ValueKey('timeRange'), // Уникальный ключ
                title: Text('Время занятий'),
                trailing: ValueSwitcherAndroid(),
              ),*/
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
                key: ValueKey('timeRangeChanger'), // Уникальный ключ
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Время занятий'),
                    Spacer(),
                    Icon(Icons.hourglass_bottom),
                  ],
                ),
                onTap: () => TimeRangeChanger()
              ),
            ],
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Apply'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}