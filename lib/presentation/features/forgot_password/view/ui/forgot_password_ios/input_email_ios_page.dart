import 'package:duma/presentation/features/forgot_password/view/ui/forgot_password_ios/otp_code_input_ios_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputEmailIosPage extends StatelessWidget{
  const InputEmailIosPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Подтверждение Email'),
        leading: Navigator.of(context).canPop()
            ? IconButton(
                icon: Icon(
                  CupertinoIcons.back,
                  color: Color(0xFF5727CE),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            : null,
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 20),
                Text('Введите тот Email, который был указан при создании аккаунта и Мы вышлем код подтверждения для входа в аккаунт',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'San Francisco',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: CupertinoColors.black
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
                    color: CupertinoColors.black
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 10),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey6,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: CupertinoTextField(
                    prefix: Text(
                      'Email:',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'San Francisco',
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: CupertinoColors.black
                      ),
                    ),
                    placeholder: 'Обязательно',
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: const BoxDecoration(),
                  ),
                ),
                const SizedBox(height: 16),
                LayoutBuilder(
                  builder: (context, constraints) {
                    return SizedBox(
                      width: constraints.maxWidth,
                      height: 43,
                      child: CupertinoButton(
                        padding: EdgeInsets.symmetric(),
                        color: Color(0xFF5727CE),
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(builder: (context) => OtpCodeInputIosPage()),
                          );
                        },
                        child: Text(
                          'Отправить код',
                          style: TextStyle(
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: CupertinoColors.white
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}