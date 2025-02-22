import 'dart:io';
import 'package:duma/presentation/features/forgot_password/view/ui/forgot_password_ios/input_email_ios_page.dart';
import 'package:duma/presentation/features/sign_in/view/ui/sign_in_ios/sign_in_ios_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../settings/view/ui/settings_ios/settings_ios_page.dart';

class SignUpIosPage extends StatefulWidget {
  const SignUpIosPage({super.key});

  @override
  State<SignUpIosPage> createState() => _SignInIosPageState();
}

class _SignInIosPageState extends State<SignUpIosPage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {

          }, 
          icon: Icon(
            CupertinoIcons.back,
            color: Color(0xFF5727CE),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 110),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'РЕГИСТРАЦИЯ',
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
                            'Имя:',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          placeholder: 'Введите Имя',
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
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                          ],
                        ),
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
                                      'Зарегистрироваться',
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
                                  'Уже есть аккаунт?',
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
                                      CupertinoPageRoute(builder: (context) => SignInIosPage()),
                                    );
                                  }, 
                                  child: Text(
                                    'Войдите!',
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