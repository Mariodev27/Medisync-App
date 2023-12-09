import 'package:medisync/src/pages/login/login_page.dart';
import 'package:medisync/src/utils/global_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medisync/src/widgets/BackgroundTemplate.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                AppLocalizations.of(context)!
                    .medisync, // Utiliza el texto localizado para 'Medisync'
                style: TextStyle(
                  color: GlobalColors.ninthColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40), // Ajusta el valor para cambiar el espacio
              Text(
                AppLocalizations.of(context)!
                    .worryLess, // Utiliza el texto localizado para 'Preocúpate menos...Vive'
                style: TextStyle(
                  color: GlobalColors.primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                AppLocalizations.of(context)!
                    .liveHealthier, // Utiliza el texto localizado para 'más sano...'
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
                AppLocalizations.of(context)!
                    .welcome, // Utiliza el texto localizado para 'Bienvenido'
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
                    foregroundColor: GlobalColors.seventhColor,
                    backgroundColor: GlobalColors.sixthColor, // Color del texto
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15), // Ajusta el valor para cambiar el redondeado
                    ),
                  ),
                  onPressed: () {
                    Get.to(() => const LoginPage());
                  },
                  child: const Text(
                    'Empezar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.03,
                      letterSpacing: 2.10,
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
