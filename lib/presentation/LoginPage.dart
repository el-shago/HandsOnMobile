import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> keyFormLogin = GlobalKey<FormState>();

  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Iniciar Sesión",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Container(
        color: Color(0xFFF5F5F5),
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
                hintText: 'Nombre de usuario',
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
              {
                  print("Validar el usuario con su API");
                  
                }
              },
              child: Text(
                "Iniciar Sesión",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              color: Color(0xFFFF78B2),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Color(0xFFFF78B2)),
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/images/google.png',
              height: 46.0,
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

  void login() {
    print("Attempting to login with:");
    print("Username: ${userName.text}");
    print("Password: ${password.text}");
  }
}
