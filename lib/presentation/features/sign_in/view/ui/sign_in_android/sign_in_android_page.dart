import 'package:duma/presentation/features/onboard/onboard.dart';
import 'package:flutter/material.dart';

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
          icon: Icon(Icons.arrow_back)
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
                    labelText: 'Password',
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
                              // Действие при нажатии
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