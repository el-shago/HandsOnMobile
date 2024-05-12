import 'package:flutter/material.dart';
import 'package:hands_on_flutter/theme/custom_text_style.dart'; // Ensure this is the correct path
import 'package:hands_on_flutter/widgets/CustomTextFormField.dart'; // Ensure this is the correct path

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 16),
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(right: 1),
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 71),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Iniciar Sesion",
                    style: CustomTextStyles.displayMediumBold(
                        context), // Assuming this returns a TextStyle
                  ),
                  const SizedBox(height: 15),
                  CustomTextFormField(
                    controller: emailController,
                    hintText: "Correo",
                    borderDecoration: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ), // Ensure CustomTextFormField can accept this
                  ),
                  const SizedBox(height: 15),
                  CustomTextFormField(
                    controller: emailController,
                    hintText: "Constraseña",
                    borderDecoration: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ), // Ensure CustomTextFormField can accept this
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
