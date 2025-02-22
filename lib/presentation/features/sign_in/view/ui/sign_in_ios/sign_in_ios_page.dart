import 'dart:io';

import 'package:duma/presentation/features/forgot_password/view/ui/forgot_password_ios/input_email_ios_page.dart';
import 'package:duma/presentation/features/sign_up/view/ui/sign_up_ios/sign_up_ios_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../settings/view/ui/settings_ios/settings_ios_page.dart';

class SignInIosPage extends StatefulWidget {
  const SignInIosPage({super.key});

  @override
  State<SignInIosPage> createState() => _SignInIosPageState();
}

class _SignInIosPageState extends State<SignInIosPage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 150),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'АВТОРИЗАЦИЯ',
                        style: TextStyle(
                          fontFamily: 'San Francisco',
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xFF5727EC)
                        ),
                      ),
                      const SizedBox(height: 28),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: CupertinoColors.systemGrey6,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: CupertinoTextField(
                          prefix: Text(
                            'Email:',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          placeholder: 'Введите Email',
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: const BoxDecoration(
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: CupertinoColors.systemGrey6,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: CupertinoTextField(
                          prefix: Text(
                            'Пароль:',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          placeholder: 'Введите Пароль',
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: const BoxDecoration(),
                          obscureText: _isObscure,
                          suffix: IconButton(
                            icon: Icon(
                              _isObscure ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            activeColor: Color(0xFF5727CE),
                            value: true, 
                            onChanged: (bool? value) {

                            }
                          ),
                          const SizedBox(width: 5),
                          Text('Запомнить меня',
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                              color: Colors.black
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(builder: (context) => InputEmailIosPage()),
                              );
                            }, 
                            child: Text(
                              'Забыли пароль?',
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: Color(0xFF5727EC)
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Центрирование по вертикали
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            LayoutBuilder(
                              builder: (context, constraints) {
                                return SizedBox(
                                  width: constraints.maxWidth,
                                  height: 43,
                                  child: CupertinoButton(
                                    padding: EdgeInsets.symmetric(),
                                    color: Color(0xFF5727CE),
                                    onPressed: () {
                                      bool isSwitchEnabled = false; // Укажите значение, которое вам нужно передать
                                        Navigator.push(
                                          context,
                                          CupertinoPageRoute(builder: (context) => SettingsIosPage(isSwitchEnabled: isSwitchEnabled)),
                                      );
                                    },
                                    child: Text(
                                      'Войти',
                                      style: TextStyle(
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Нет аккаунта?',
                                  style: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.grey
                                  ),
                                ),
                                const SizedBox(width: 5),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      CupertinoPageRoute(builder: (context) => SignUpIosPage()),
                                    );
                                  }, 
                                  child: Text(
                                    'Создайте его!',
                                    style: TextStyle(
                                      fontFamily: 'Ubuntu',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Color(0xFF5727CE)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ) 
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}