import 'package:device_preview/device_preview.dart';
import 'package:duma/presentation/common/components_for_ios/custom_tab_bar/custom_tab_bar.dart';
import 'package:duma/presentation/features/onboard/view/onboard_pages.dart';
import 'package:duma/presentation/features/schedule/view/ui/schedule_android/schedule_android_page.dart';
import 'package:duma/presentation/features/settings/view/ui/settings_android/settings_android_page.dart';
import 'package:duma/presentation/features/settings/view/ui/settings_ios/settings_ios_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  /*DevicePreview(
    enabled: true,
    builder: (context) => Duma()
  )*/ Duma()
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