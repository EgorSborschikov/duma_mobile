import 'package:flutter/material.dart';

class ScheduleSearchAndroidPage extends StatelessWidget{
  const ScheduleSearchAndroidPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Настройки поиска расписания',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.black,
              labelText: 'Название группы/класса',
              labelStyle: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: Colors.black
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black), 
                borderRadius: BorderRadius.circular(10)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black), 
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
          ListTile(
            title: Text('Setting 1'),
            subtitle: Text('Description of setting 1'),
            trailing: Switch(
              value: false,
              onChanged: (bool value) {
                // Handle setting change
              },
            ),
          ),
          ListTile(
            title: Text('Setting 2'),
            subtitle: Text('Description of setting 2'),
            trailing: Switch(
              value: true,
              onChanged: (bool value) {
                // Handle setting change
              },
            ),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            child: Text('Apply'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}