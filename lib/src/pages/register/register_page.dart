import 'package:flutter/material.dart';
import 'package:medisync/src/widgets/BackgroundTemplate.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:medisync/src/utils/global_color.dart';
import 'package:medisync/src/pages/register/register_controller.dart';

class RegisterPage extends StatelessWidget {
  final RegisterController controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return BackgroundTemplate(
      child: Scaffold(
          resizeToAvoidBottomInset: false, // Agrega esto
          backgroundColor: Colors.transparent,
          body: SafeArea(child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewConstraints) {
              return SingleChildScrollView(
                  child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewConstraints.maxHeight,
                ),
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
                          width: 180,
                          height: 140,
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
                            controller:
                                controller.nameController, // Agrega esto
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    width: 1, color: GlobalColors.tenthColor),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Introduce tu nombre completo',
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Rectángulo para introducir contraseña
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
                              hintText: 'Introducir la contraseña',
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Rectángulo para introducir contraseña
                        SizedBox(
                          width: 318,
                          height: 56,
                          child: TextField(
                            controller: controller.confirmPasswordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    width: 1, color: GlobalColors.tenthColor),
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Confirmar Contraseña',
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
                            onPressed: controller.register,
                            child: const Text(
                              'Registrate',
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
                              'Ya tienes una cuenta ?',
                              style: TextStyle(
                                color: GlobalColors
                                    .twelfthColor, // Usa twelfthColor aquí
                              ),
                            ),
                            TextButton(
                              onPressed: controller.gotoLoginPage,
                              child: Text(
                                'Ingrese',
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
              ));
            },
          ))),
    );
  }
}
