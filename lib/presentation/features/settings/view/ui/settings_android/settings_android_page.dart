import 'dart:io';
import 'package:duma/presentation/common/components_for_android/custom_app_bar/custom_app_bar.dart';
import 'package:duma/presentation/features/settings/view/ui/settings_ios/settings_ios_page.dart';
import 'package:flutter/material.dart';
import '../../../../sign_in/view/ui/sign_in_android/sign_in_android_page.dart';
import '../widgets/settings_items_android_widgets/settings_option_android.dart';

class SettingsAndroidPage extends StatefulWidget {
  const SettingsAndroidPage({super.key});

  @override
  State<SettingsAndroidPage> createState() => _SettingsAndroidPageState();
}

class _SettingsAndroidPageState extends State<SettingsAndroidPage> {
  bool _isSwitchEnabled = true; // По умолчанию включено, если на Android

  void _onSwitchChanged(bool value) {
    setState(() {
      _isSwitchEnabled = value;

      if (!_isSwitchEnabled) { // Если переключатель выключен
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SettingsIosPage(isSwitchEnabled: true),
          ),
        );
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Настройки',
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignInAndroidPage()),
            );
          }, 
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
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
              value: _isSwitchEnabled,
              onChanged: _onSwitchChanged,
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
