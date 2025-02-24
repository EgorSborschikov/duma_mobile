import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeRangePicker extends StatefulWidget {
  @override
  _TimeRangePickerState createState() => _TimeRangePickerState();
}

class _TimeRangePickerState extends State<TimeRangePicker> {
  TimeOfDay? startTime;
  TimeOfDay? endTime;

  void _showTimePickerDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Выберите диапазон времени'),
          content: Column(
            children: [
              Text('Время начала:'),
              SizedBox(
                height: 180,
                child: CupertinoTimerPicker(
                  initialTimerDuration: startTime != null
                      ? Duration(hours: startTime!.hour, minutes: startTime!.minute)
                      : Duration(hours: 9, minutes: 0),
                  mode: CupertinoTimerPickerMode.hm, // Изменено на hm для выбора часов и минут
                  onTimerDurationChanged: (Duration newDuration) {
                    setState(() {
                      startTime = TimeOfDay(hour: newDuration.inHours % 24, minute: newDuration.inMinutes % 60);
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              Text('Время окончания:'),
              SizedBox(
                height: 180,
                child: CupertinoTimerPicker(
                  initialTimerDuration: endTime != null
                      ? Duration(hours: endTime!.hour, minutes: endTime!.minute)
                      : Duration(hours: 17, minutes: 0),
                  mode: CupertinoTimerPickerMode.hm, // Изменено на hm для выбора часов и минут
                  onTimerDurationChanged: (Duration newDuration) {
                    setState(() {
                      endTime = TimeOfDay(hour: newDuration.inHours % 24, minute: newDuration.inMinutes % 60);
                    });
                  },
                ),
              ),
            ],
          ),
          actions: [
            CupertinoDialogAction(
              child: Text('Отмена'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
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

    return CupertinoButton(
      child: Text(buttonText),
      onPressed: () {
        _showTimePickerDialog(context);
      },
    );
  }
}
