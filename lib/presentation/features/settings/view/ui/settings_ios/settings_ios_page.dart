import 'dart:io';
import 'package:duma/presentation/common/components_for_ios/custom_tab_bar/custom_tab_bar.dart';
import 'package:duma/presentation/common/components_for_ios/custom_top_navigation_bar/custom_top_navigation_bar.dart';
import 'package:duma/presentation/features/profile/view/ui/profile_ios_page.dart/profile_ios_page.dart';
import 'package:duma/presentation/features/sign_in/view/ui/sign_in_ios/sign_in_ios_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import '../../../../sign_up/view/ui/sign_up_ios/sign_up_ios_page.dart';
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

  Future<void> _supportAppeal(BuildContext context) {
    return showCupertinoModalPopup(
      context: context, 
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text(
            'Поддержка',
            style: TextStyle(
              fontFamily: 'San Francisco',
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: CupertinoColors.inactiveGray
            ),
          ),
          message: Text('Выберите удобный Вам способ обращения'),
          actions: [
            CupertinoActionSheetAction(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.telegram,
                    color: CupertinoColors.activeBlue,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Написать в поддержку',
                    style: TextStyle(
                      fontFamily: 'San Francisco',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      //color: Color(0xFF5727CE)
                      color: CupertinoColors.activeBlue
                    ),
                  ),
                ],
              ),
              onPressed: () {
                // Логика для действия
                Navigator.of(context).pop();
              },
            ),
            CupertinoActionSheetAction(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.mail,
                    color: CupertinoColors.activeBlue,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Написать Email',
                    style: TextStyle(
                      fontFamily: 'San Francisco',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      //color: Color(0xFF5727CE)
                      color: CupertinoColors.activeBlue
                    ),
                  ),
                ],
              ),
              onPressed: () {
                // Логика для действия
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    );
  }

  Future<dynamic> _changeNewPassword(BuildContext context) {
    //bool _isObscure = true;

    return showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Сменить пароль'),
          content: Column(
            children: [
              Text(
                'После смены пароля Вам необходимо заново авторизироваться в системе',
                style: TextStyle(
                  fontFamily: 'San Francisco',
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: CupertinoColors.inactiveGray
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 30,
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey6,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: CupertinoTextField(
                  placeholder: 'Новый пароль',
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: const BoxDecoration(),
                  obscureText: true
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 30,
                decoration: BoxDecoration(
                  color: CupertinoColors.systemGrey6,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: CupertinoTextField(
                  placeholder: 'Подтвердить пароль',
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: const BoxDecoration(),
                  obscureText: true
                ),
              ),
            ],
          ),
          actions: [
            CupertinoDialogAction(
              child: Text(
                'Отмена',
                style: TextStyle(
                  color: CupertinoColors.activeBlue
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text(
                'Сохранить',
                style: TextStyle(
                  color: CupertinoColors.activeBlue
                ),
              ),
              onPressed: () {
                // Логика сохранения нового пароля
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  /*void _restartApp(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      CupertinoPageRoute(builder: (context) => SignInIosPage()),
      (Route<dynamic> route) => false,
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: CustomTopNavigationBar(
        title: 'Настройки', 
        showLeading: true,
        onTap: () { 
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => ProfileIosPage()),
          );
        }, 
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
                  /*SettingsOptionIos(
                    title: 'Нативный интерфейс',
                    child: CupertinoSwitch(
                      value: _isCupertinoSwitchEnabled,
                      onChanged: _onCupertinoSwitchChanged,
                    ),
                  ),*/
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
                    child: IconButton(
                        onPressed: () {
                          // Логика смены пароля
                          _changeNewPassword(context);
                        }, 
                        icon: Icon(
                          CupertinoIcons.restart,
                          color: Color(0xFF5727CE),
                        )
                      ),
                    ),
                  SettingsOptionIos(
                    title: 'Удалить аккаунт',
                    child: Builder(
                      builder: (BuildContext context) {
                        return IconButton(
                          icon: Icon(
                            CupertinoIcons.delete,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            /*Phoenix.rebirth(context);
                            Phoenix.rebirth(context);*/
                            Navigator.pushReplacement(
                              context,
                              CupertinoPageRoute(builder: (context) => const SignUpIosPage()),
                            );
                            print('Удалить аккаунт');
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SettingsItemsIos(
                header: 'Прочее', 
                options: [
                  SettingsOptionIos(
                    title: 'Написать в поддержку', 
                    child: IconButton(
                      onPressed: () => _supportAppeal(context), 
                      icon: Icon(
                        CupertinoIcons.chat_bubble_fill,
                        color: Color(0xFF5727CE),
                      ),
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