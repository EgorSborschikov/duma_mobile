import 'dart:io';
import 'package:duma/presentation/common/components_for_ios/custom_top_navigation_bar/custom_top_navigation_bar.dart';
import 'package:duma/presentation/features/sign_in/view/ui/sign_in_ios/sign_in_ios_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../settings_android/settings_android_page.dart';
import '../widgets/settings_items_ios_widgets/settings_option_ios.dart';
import '../widgets/settings_items_ios_widgets/settings_items_ios.dart';

class SettingsIosPage extends StatefulWidget {
  final bool isSwitchEnabled; // Здесь объявляем переменную

  const SettingsIosPage({super.key, required this.isSwitchEnabled,});

  @override
  State<SettingsIosPage> createState() => _SettingsIosPageState();
}

class _SettingsIosPageState extends State<SettingsIosPage> {
  late bool _isCupertinoSwitchEnabled;

  @override
  void initState() {
    super.initState();
    if (!Platform.isIOS) {
      _isCupertinoSwitchEnabled = widget.isSwitchEnabled; // Используем переданное состояние
    }
  }

  void _onCupertinoSwitchChanged(bool value) {
    setState(() {
      if (Platform.isAndroid) {
        _isCupertinoSwitchEnabled = false;
      }
      _isCupertinoSwitchEnabled = value;

      if (_isCupertinoSwitchEnabled) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SettingsAndroidPage(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CustomTopNavigationBar(
        title: 'Настройки', 
      ),
      child: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: SettingsItemsIos(
                header: 'Основные настройки',
                options: [
                  SettingsOptionIos(
                    title: 'Тёмная тема',
                    child: CupertinoSwitch(
                      value: false,
                      onChanged: (bool value) {},
                    ),
                  ),
                  SettingsOptionIos(
                    title: 'Нативный интерфейс',
                    child: CupertinoSwitch(
                      value: _isCupertinoSwitchEnabled,
                      onChanged: _onCupertinoSwitchChanged,
                    ),
                  ),
                  SettingsOptionIos(
                    title: 'Язык интерфейса',
                    child: CupertinoPicker(
                      itemExtent: 50.0, // Высота каждого элемента
                      onSelectedItemChanged: (int index) {
                        // Заглушка для обработки выбора элемента
                        print('Выбран язык: $index');
                      },
                      children: [
                        Text('Русский'),
                        Text('Английский'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SettingsItemsIos(
                header: 'Дополнительные настройки',
                options: [
                  SettingsOptionIos(
                    title: 'Сменить пароль',
                    child: CupertinoButton(
                      onPressed: () {
                        showCupertinoDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CupertinoAlertDialog(
                              title: Text('Сменить пароль'),
                              content: Column(
                                children: [
                                  CupertinoTextField(
                                    placeholder: 'Новый пароль',
                                  ),
                                  CupertinoTextField(
                                    placeholder: 'Подтвердите пароль',
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
                                  child: Text('Сохранить'),
                                  onPressed: () {
                                    // Логика сохранения нового пароля
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: IconButton(
                        onPressed: () {
                          // Логика смены пароля
                        }, 
                        icon: Icon(
                          CupertinoIcons.restart,
                          color: Color(0xFF5727CE),
                        )
                      ),
                    ),
                  ),
                  SettingsOptionIos(
                    title: 'Удалить аккаунт',
                    child: IconButton(
                      icon: Icon(
                        CupertinoIcons.delete,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => SignInIosPage()
                          )
                        );
                        print('Удалить аккаунт');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
