import 'package:device_preview/device_preview.dart';
import 'package:duma/presentation/features/onboard/onboard.dart';
import 'package:duma/presentation/features/settings/view/ui/settings_ios/settings_ios_page.dart';
import 'package:duma/presentation/features/sign_in/view/ui/sign_in_ios/sign_in_ios_page.dart';
import 'package:flutter/material.dart';

import 'presentation/features/settings/view/ui/settings_android/settings_android_page.dart';

void main() => runApp(
  /*DevicePreview(
    enabled: true,
    builder: (context) => Duma()
  )*/
  Duma()
);

class Duma extends StatelessWidget {
  const Duma({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnboardingPages()
    );
  }
}