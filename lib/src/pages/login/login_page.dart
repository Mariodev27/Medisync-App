import 'package:medisync/src/utils/global_color.dart';
import 'package:flutter/material.dart';
import 'package:medisync/src/widgets/BackgroundTemplate.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:medisync/src/pages/login/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return BackgroundTemplate(
      child: Scaffold(
        resizeToAvoidBottomInset: false, // Agrega esto
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            // Asegura que todo esté centrado
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo1
                  Image.asset(
                    'assets/logo/logo1.png',
                    width: 200,
                    height: 164,
                  ),
                  // Medisync
                  Text(
                    AppLocalizations.of(context)!
                        .medisync, // Utiliza el texto localizado para 'Medisync'
                    style: TextStyle(
                      color: GlobalColors.ninthColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Rectángulo para introducir correo
                  SizedBox(
                    width: 318,
                    height: 56,
                    child: TextField(
                      controller: controller.emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                              width: 1, color: GlobalColors.tenthColor),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Introduce tu correo electrónico',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Rectángulo para introducir contraseña
                  SizedBox(
                    width: 318,
                    height: 56,
                    child: TextField(
                      controller: controller.passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                              width: 1, color: GlobalColors.tenthColor),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Introduce tu contraseña',
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Has olvidado tu contraseña
                  TextButton(
                    onPressed: () {
                      // Aquí va tu código para manejar el olvido de contraseña
                    },
                    child: Text(
                      '¿Has olvidado tu contraseña?',
                      style: TextStyle(
                        color:
                            GlobalColors.eleventhColor, // Agrega el color aquí
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 200, // Ancho del botón
                    height: 60, // Altura del botón
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: GlobalColors.seventhColor,
                        backgroundColor: GlobalColors.sixthColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              15), // Ajusta el valor para cambiar el redondeado
                        ),
                      ),
                      onPressed: controller.login,
                      child: const Text(
                        'Ingrese',
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
                  ),
                  const SizedBox(height: 20),
                  // '¿No tienes una cuenta? ' y 'Regístrate' en la misma línea
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'No tienes una cuenta ?',
                        style: TextStyle(
                          color: GlobalColors
                              .twelfthColor, // Usa twelfthColor aquí
                        ),
                      ),
                      TextButton(
                        onPressed: controller.gotoRegisterPage,
                        child: Text(
                          'Regístrate',
                          style: TextStyle(
                            color: GlobalColors
                                .eleventhColor, // Usa eleventhColor aquí
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
