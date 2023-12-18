import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:medisync/src/pages/login/login_page.dart';
import 'package:http/http.dart' as http;

class RegisterController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void gotoLoginPage() {
    Get.to(() => LoginPage());
  }

  Future<void> register() async {
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();

    print('Name $name');
    print('Email $email');
    print('Password $password');
    print('Confirm password $confirmPassword');

    if (isValidForm(name, email, password, confirmPassword)) {
      var response = await http.post(
        // Uri.parse('http://54.226.1.168:8000/api/register'), //aws
        Uri.parse('http://localhost:3000/api/register'), //localhost
        body: {
          'name': name,
          'email': email,
          'password': password,
        },
      );
      if (response.statusCode == 201) {
        Get.snackbar('Éxito', 'Usuario registrado correctamente');
      } else {
        Get.snackbar('Error', 'Falló el registro del usuario');
      }
    }
  }

  bool isValidForm(
      String name, String email, String password, String confirmPassword) {
    if (name.isEmpty) {
      Get.snackbar(
          'Formulario Inválido', 'Debes de Ingresar tu nombre completo');
      return false;
    }
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
    if (password != confirmPassword) {
      Get.snackbar('Formulario Inválido', 'Las contraseñas no coinciden');
      return false;
    }

    return true;
  }
}
