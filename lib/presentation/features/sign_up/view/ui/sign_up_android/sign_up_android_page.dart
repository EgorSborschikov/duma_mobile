import 'package:duma/presentation/common/components_for_android/custom_bottom_navigation_bar.dart/pages_frame.dart';
import 'package:flutter/material.dart';
import '../../../../settings/view/ui/settings_android/settings_android_page.dart';
import '../../../../sign_in/view/ui/sign_in_android/sign_in_android_page.dart';

class SignUpAndroidPage extends StatefulWidget{
  const SignUpAndroidPage({super.key});

  @override
  State<SignUpAndroidPage> createState() => _SignUpAndroidPageState();
}

class _SignUpAndroidPageState extends State<SignUpAndroidPage> {
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
              MaterialPageRoute(builder: (context) => SignInAndroidPage()),
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
                Text('РЕГИСТРАЦИЯ',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color(0xFF5727EC)
                  ),
                ),
                const SizedBox(height: 28),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.black,
                    labelText: 'Имя',
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                          'Зарегистрироваться',
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
                            'Уже есть аккаунт?',
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
                                MaterialPageRoute(builder: (context) => SignInAndroidPage()),
                              );
                            }, 
                            child: Text(
                              'Войдите!',
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