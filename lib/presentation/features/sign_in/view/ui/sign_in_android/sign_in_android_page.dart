import 'package:duma/presentation/common/components_for_android/custom_bottom_navigation_bar.dart/pages_frame.dart';
import 'package:duma/presentation/features/forgot_password/view/ui/forgot_password_android/input_email_android_page.dart';
import 'package:duma/presentation/features/onboard/onboard.dart';
import 'package:duma/presentation/features/schedule/view/ui/schedule_android/schedule_android_page.dart';
import 'package:flutter/material.dart';
import '../../../../settings/view/ui/settings_android/settings_android_page.dart';
import '../../../../sign_up/view/ui/sign_up_android/sign_up_android_page.dart';

class SignInAndroidPage extends StatefulWidget{
  const SignInAndroidPage({super.key});

  @override
  State<SignInAndroidPage> createState() => _SignInAndroidPageState();
}

class _SignInAndroidPageState extends State<SignInAndroidPage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnboardingPages()),
            );
          }, 
          icon: Icon(
            Icons.arrow_back,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 110),
                Text('АВТОРИЗАЦИЯ',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF5727EC)
                  ),
                ),
                const SizedBox(height: 28),
                TextField(
                  //controller: ,
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    labelText: 'Email',
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
                const SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    labelText: 'Пароль',
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
                    suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                  ),
                  obscureText: _isObscure,
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
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                        color: Colors.black
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InputEmailAndroidPage()),
                        );
                      }, 
                      child: Text(
                        'Забыли пароль?',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
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
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PagesFrame()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF5727EC), 
                          padding: EdgeInsets.symmetric(horizontal: 43, vertical: 10), 
                          minimumSize: Size(263, 43), 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Войти',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Нет аккаунта?',
                            style: TextStyle(
                              fontFamily: 'Roboto',
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
                                MaterialPageRoute(builder: (context) => SignUpAndroidPage()),
                              );
                            }, 
                            child: Text(
                              'Создайте его!',
                              style: TextStyle(
                                fontFamily: 'Roboto',
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
        ),
      ),
    );
  }
}