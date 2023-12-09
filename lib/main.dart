import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medisync/src/pages/splash/splash_page.dart';
import 'package:medisync/src/utils/global_color.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations
          .supportedLocales, // Utiliza AppLocalizations.supportedLocales
      title: 'App Tesis',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalColors.thirdColor,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const SplashPage()),
      ],
      navigatorKey: Get.key,
    );
  }
}
