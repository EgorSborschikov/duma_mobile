import 'dart:io';

import 'package:flutter/material.dart';

import '../../sign_in/view/ui/sign_in_android/sign_in_android_page.dart';
import '../../sign_in/view/ui/sign_in_ios/sign_in_ios_page.dart';

class OnboardingPages extends StatefulWidget {
  const OnboardingPages({super.key});

  @override
  _OnboardingPagesState createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  final List<Map<String, String>> slides = [
    {
      "title": "ДОБРО ПОЖАЛОВАТЬ",
      "description": "",
      "image": "lib/data/assets/onboard_picture.png",
    },
    {
      "title": "НАЧНЕМ ПУТЕШЕСТВИЕ",
      "description": "Доступы опции электронного дневника/зачётной книжки, просмотра расписания и диалога с преподавателями ",
      "image": "lib/data/assets/onboard_picture.png",
    },
    {
      "title": "",
      "description": "Нажмите далее, чтобы авторизироваться в системе ",
      "image": "lib/data/assets/onboard_picture.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFFFFF),
                  Color(0xFFD9D9D9),
                  Color(0xFF5727EC),
                ],
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: slides.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 80),
                                Text(
                                  slides[index]["title"]!,
                                  style: TextStyle(
                                    color: Color(0xFF5727EC),
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  slides[index]["description"]!,
                                  style: TextStyle(
                                    color: Color(0xFF5727EC),
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Spacer(),
                                Image.asset(slides[index]["image"]!),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    slides.length,
                    (index) => Container(
                      width: 10.0,
                      height: 10.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentPage == index ? Colors.white : Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_currentPage == 2) {
                          if(Platform.isAndroid) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignInAndroidPage()),
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignInIosPage()),
                            );
                          }
                        } else {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        _currentPage != 0 ? "Далее" : "Начать",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}