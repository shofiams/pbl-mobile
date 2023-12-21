import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/controllers/login_controller.dart';
import 'package:project/widgets/submit_button.dart';

import 'package:project/widgets/input_text_field.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.find();
    return Column(
      children: [
        InputTextFieldWidget(
            textEditingController: loginController.emailController,
            hintText: 'Email'),
        const SizedBox(height: 20),
        InputTextFieldWidget(
            textEditingController: loginController.passwordController,
            hintText: "Password"),
        const SizedBox(height: 20),
        SubmitButton(
          onPressed: () {
            loginController.loginWithEmail();
          },
          title: 'Login',
        )
      ],
    );
  }
}
