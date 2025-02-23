import 'package:duma/presentation/features/forgot_password/view/ui/forgot_password_android/otp_code_input_android_page.dart';
import 'package:flutter/material.dart';

class InputEmailAndroidPage extends StatelessWidget{
  const InputEmailAndroidPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Подтверждение Email'),
        centerTitle: true,
        leading: Navigator.of(context).canPop()
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Color(0xFF5727CE),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            : null,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text('Введите тот Email, который был указан при создании аккаунта и Мы вышлем код подтверждения для входа в аккаунт',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'San Francisco',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 20),
                Text('Чтобы сменить пароль, перейдите в "Профиль", далее в "Настройки" и выбирете опцию "сменить пароль"',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'San Francisco',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color:Colors.black
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 10),
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OtpCodeInputAndroidPage()),
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
                    'Отправить код',
                     style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white
                    ),
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