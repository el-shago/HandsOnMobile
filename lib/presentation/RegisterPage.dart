import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  GlobalKey<FormState> keyFormLogin = GlobalKey<FormState>();

  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email =
      TextEditingController(); // Nuevo controlador para el correo electrónico

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        title: Padding(
          padding: EdgeInsets.symmetric(
              horizontal:
                  16.0), // Ajusta el relleno horizontal según sea necesario
          child: Text(
            "Register",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Container(
        color: Color(0xFFF5F5F5), // Fondo gris
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            TextField(
              controller: userName,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Nombre',
                hintStyle: TextStyle(
                  color: Colors.grey.shade500,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 14.0,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: lastName,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Apellido',
                hintStyle: TextStyle(
                  color: Colors.grey.shade500,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 14.0,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              // Nuevo campo para el correo electrónico
              controller: email,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Correo',
                hintStyle: TextStyle(
                  color: Colors.grey.shade500,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 14.0,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Contraseña',
                hintStyle: TextStyle(
                  color: Colors.grey.shade500,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 14.0,
                ),
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                if (keyFormLogin.currentState!.validate()) {
                  print("Validar el usuario con su API");
                  login();
                }
              },
              child: Text(
                "Registrar",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              color: Color(0xFFFF78B2),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: Color(0xFFFF78B2),
                ),
              ),
            ),
           SizedBox(height: 20.0),
Image.asset(
  'assets/images/google.png',
  height: 46.0,
),
SizedBox(height: 10.0),
Center(
  child: Text.rich(
    TextSpan(
      text: '¿Ya tienes cuenta? ',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
        color: Colors.black,
      ),
      children: [
        TextSpan(
          text: 'Inicia Sesión',
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    ),
  ),
),
        ]),
      ),
    );
  }

  void login() {
    bool validacion = true;
    print("login");
    print(userName.text);
    print(password.text);
    if (validacion) {
      //Navigator.pushNamed(context, Routes.firstPage.route, arguments: userName.text);
    }
  }
}
