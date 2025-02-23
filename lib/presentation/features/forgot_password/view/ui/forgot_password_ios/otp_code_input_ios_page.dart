import 'package:duma/presentation/common/components_for_ios/custom_tab_bar/custom_tab_bar.dart';
import 'package:duma/presentation/features/schedule/view/ui/schedule_ios/schedule_ios_page.dart';
import 'package:duma/presentation/features/settings/view/ui/settings_ios/settings_ios_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtpCodeInputIosPage extends StatelessWidget{
  const OtpCodeInputIosPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('OTP-проверка'),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 20),
                Text(
                  'Введите код, который Мы отправили Вам на указанный Email',
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'San Francisco',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: CupertinoColors.black
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: 40,
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey6,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: CupertinoTextField(
                          padding: const EdgeInsets.symmetric(horizontal: 0), 
                          decoration: const BoxDecoration(),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          textAlignVertical: TextAlignVertical.center, 
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 70,
                      width: 40,
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey6,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: CupertinoTextField(
                          padding: const EdgeInsets.symmetric(horizontal: 0), 
                          decoration: const BoxDecoration(),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          textAlignVertical: TextAlignVertical.center, 
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 70,
                      width: 40,
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey6,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: CupertinoTextField(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          decoration: const BoxDecoration(),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          textAlignVertical: TextAlignVertical.center, 
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 70,
                      width: 40,
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey6,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: CupertinoTextField(
                          padding: const EdgeInsets.symmetric(horizontal: 0), 
                          decoration: const BoxDecoration(),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          textAlignVertical: TextAlignVertical.center, 
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 70,
                      width: 40,
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey6,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: CupertinoTextField(
                          padding: const EdgeInsets.symmetric(horizontal: 0), 
                          decoration: const BoxDecoration(),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          textAlignVertical: TextAlignVertical.center, 
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 70,
                      width: 40,
                      decoration: BoxDecoration(
                        color: CupertinoColors.systemGrey6,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: CupertinoTextField(
                          padding: const EdgeInsets.symmetric(horizontal: 0), 
                          decoration: const BoxDecoration(),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          textAlignVertical: TextAlignVertical.center,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 40),
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
                            CupertinoPageRoute(builder: (context) => CustomTabBar()),
                          );
                        },
                        child: Text(
                          'Войти в аккаунт',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}