import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medisync/src/pages/home/home_page.dart';
import 'package:medisync/src/pages/register/register_page.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void gotoRegisterPage() {
    Get.to(() => RegisterPage());
  }

  Future<void> login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    print('Email $email');
    print('password $password');

    var response = await http.post(
      Uri.parse('http://18.218.174.171:8000/api/login'), //aws
      // Uri.parse('http://localhost:3000/api/login'), //localhost
      body: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      // Si el servidor devuelve una respuesta OK, navega a la página de inicio.
      Get.to(() => HomePage());
    } else {
      // Si el servidor devuelve una respuesta que no es OK, muestra un mensaje de error.
      Get.snackbar('Error', 'Failed to login');
    }
  }

  bool isValidform(String email, String password) {
    if (email.isEmpty) {
      Get.snackbar('Formulario Inválido', 'Debes de Ingresar el email');
      return false;
    }
    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Formulario Inválido', 'El email es inválido');
      return false;
    }
    if (password.isEmpty) {
      Get.snackbar('Formulario Inválido', 'Debes de Ingresar tu contraseña');
      return false;
    }

    return true;
  }
}
