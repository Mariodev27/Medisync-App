import 'package:medisync/src/pages/login/login_page.dart';
import 'package:medisync/src/utils/global_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medisync/src/widgets/BackgroundTemplate.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundTemplate(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Medisync',
                style: TextStyle(
                  color: GlobalColors.eighthColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Preocúpate menos...Vive más sano...',
                style: TextStyle(
                  color: GlobalColors.primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Image.asset(
                'assets/logo/logo1.png',
                width: 250,
                height: 250,
              ),
              Text(
                'Bienvenido!',
                style: TextStyle(
                  color: GlobalColors.primaryColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                  height: 30), // Ajusta este valor para cambiar la separación
              SizedBox(
                width: 200, // Ancho del botón
                height: 60, // Altura del botón
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: GlobalColors.seventhColor, backgroundColor: GlobalColors.sixthColor, // Color del texto
                  ),
                  onPressed: () {
                    Get.to(() => const LoginPage());
                  },
                  child: const Text(
                    'Empezar',
                    style: TextStyle(
                      fontSize: 25, // Tamaño del texto
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
