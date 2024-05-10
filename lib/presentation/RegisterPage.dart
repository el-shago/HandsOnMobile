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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register",
        style: TextStyle(
          fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFFF5F5F5),
      ),
      body: Container(
        color: Color(0xFFF5F5F5), // Fondo gris
        padding: EdgeInsets.all(20),
        child: Form(
          key: keyFormLogin,
          child: ListView(
            children: [
              TextFormField(
                controller: userName,
                decoration: InputDecoration(
                  labelText: 'Nombre de Usuario',
                  // Cambiar el tipo de fuente
                  labelStyle: TextStyle(fontFamily: 'Roboto'),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nombre de usuario requerido';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: password,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  // Cambiar el tipo de fuente
                  labelStyle: TextStyle(fontFamily: 'Roboto'),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Contraseña requerida';
                  }
                  return null;
                },
                obscureText: true,
              ),
              SizedBox(height: 20),
              MaterialButton(
                onPressed: () {
                  if (keyFormLogin.currentState!.validate()) {
                    print("Validar el usuario con su API");
                    login();
                  }
                },
                child: Text("Registrar"),
                color: Color(0xFFFF78B2), // Color FF78B2
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                      color: Color(
                          0xFFFF78B2)), // También puedes utilizar el mismo color para el borde
                ),
              )
            ],
          ),
        ),
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
