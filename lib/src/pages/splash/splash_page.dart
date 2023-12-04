import 'dart:async';
import 'package:medisync/src/pages/welcome/WelcomePage.dart';
import 'package:medisync/src/utils/global_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medisync/src/widgets/BackgroundTemplate.dart'; // Asegúrate de importar BackgroundTemplate

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to(() => const WelcomePage());
    });
    return BackgroundTemplate(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo/logo1.png',
                width: 250,
                height: 250,
              ),
              Text(
                '',
                style: TextStyle(
                  color: GlobalColors.primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
