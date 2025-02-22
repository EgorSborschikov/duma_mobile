import 'package:duma/presentation/common/components_for_android/custom_app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/settings_items_android_widgets/settings_option_android.dart';

class SettingsAndroidPage extends StatelessWidget {
  const SettingsAndroidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Настройки', 
        child: IconButton(
          onPressed: () {

          }, 
          icon: Icon(Icons.arrow_back)
        ),
      ),
      body: ListView(
        children: [
          SettingsOptionAndroid(
            title: 'Темная тема',
            child: Switch(
              value: false,
              onChanged: (bool value) {
                // Логика обработки переключения темной темы
              },
            ),
          ),
          Divider(),
          SettingsOptionAndroid(
            title: 'Нативный интерфейс',
            child: Switch(
              value: true,
              onChanged: (bool value) {
                // Логика обработки переключения темной темы
              },
            ),
          ),
          Divider(),
          SettingsOptionAndroid(
            title: 'Язык интерфейса',
            child: TextButton(
              onPressed: () {
                _showLanguageDialog(context);
              },
              child: Text('Выбрать язык'),
            ),
          ),
          Divider(),
          SettingsOptionAndroid(
            title: 'Сменить пароль',
            child: TextButton(
              onPressed: () {
                _showChangePasswordDialog(context);
              },
              child: Text('Сменить пароль'),
            ),
          ),
        ],
      ),
    );
  }

  void _showLanguageDialog(BuildContext context) {
    String selectedLanguage = 'Русский';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Выберите язык'),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RadioListTile<String>(
                    title: Text('Русский'),
                    value: 'Русский',
                    groupValue: selectedLanguage,
                    onChanged: (String? value) {
                      setState(() {
                        selectedLanguage = value!;
                      });
                    },
                  ),
                  RadioListTile<String>(
                    title: Text('Английский'),
                    value: 'Английский',
                    groupValue: selectedLanguage,
                    onChanged: (String? value) {
                      setState(() {
                        selectedLanguage = value!;
                      });
                    },
                  ),
                ],
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Отмена'),
            ),
            TextButton(
              onPressed: () {
                // Логика сохранения выбранного языка
                Navigator.of(context).pop();
              },
              child: Text('Сохранить'),
            ),
          ],
        );
      },
    );
  }

  void _showChangePasswordDialog(BuildContext context) {
    TextEditingController newPasswordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Сменить пароль'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: newPasswordController,
                decoration: InputDecoration(labelText: 'Новый пароль'),
                obscureText: true,
              ),
              TextField(
                controller: confirmPasswordController,
                decoration: InputDecoration(labelText: 'Подтвердите пароль'),
                obscureText: true,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Отмена'),
            ),
            TextButton(
              onPressed: () {
                // Логика сохранения нового пароля
                Navigator.of(context).pop();
              },
              child: Text('Сохранить'),
            ),
          ],
        );
      },
    );
  }
}
