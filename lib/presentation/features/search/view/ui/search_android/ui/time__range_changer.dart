import 'package:flutter/material.dart';

class TimeRangeChanger extends StatefulWidget {
  @override
  _TimeRangePickerState createState() => _TimeRangePickerState();
}

class _TimeRangePickerState extends State<TimeRangeChanger> {
  TimeOfDay? startTime;
  TimeOfDay? endTime;

  Future<void> _selectTime(BuildContext context, bool isStartTime) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: isStartTime ? startTime ?? TimeOfDay(hour: 9, minute: 0) : endTime ?? TimeOfDay(hour: 17, minute: 0),
    );
    if (picked != null && picked != (isStartTime ? startTime : endTime)) {
      setState(() {
        if (isStartTime) {
          startTime = picked;
        } else {
          endTime = picked;
        }
      });
    }
  }

  void _showTimePickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Выберите диапазон времени'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text('Время начала:'),
                subtitle: Text(startTime?.format(context) ?? 'Не выбрано'),
                onTap: () => _selectTime(context, true),
              ),
              ListTile(
                title: Text('Время окончания:'),
                subtitle: Text(endTime?.format(context) ?? 'Не выбрано'),
                onTap: () => _selectTime(context, false),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Отмена'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('ОК'),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  // Обновляем текст кнопки после выбора времени
                });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String buttonText = 'Выбрать диапазон времени';
    if (startTime != null && endTime != null) {
      buttonText = '${startTime!.format(context)} - ${endTime!.format(context)}';
    }

    return ElevatedButton(
      child: Text(buttonText),
      onPressed: () {
        _showTimePickerDialog(context);
      },
    );
  }
}
