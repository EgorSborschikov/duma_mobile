import 'package:duma/presentation/common/components_for_ios/custom_top_navigation_bar/custom_top_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/settings_items_ios_widgets/settings_option_ios.dart';
import '../widgets/settings_items_ios_widgets/settings_items_ios.dart';

class SettingsIosPage extends StatelessWidget {
  const SettingsIosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CustomTopNavigationBar(
        title: 'Настройки', 
        showBackButton: true,
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
                      value: true,
                      onChanged: (bool value) {},
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
                        // Логика удаления аккаунта
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
