import 'package:flutter/material.dart';

class UserSettingsPage extends StatelessWidget {
  const UserSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Perfil',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.0),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade300,
                  image: DecorationImage(
                    image: AssetImage('assets/images/iso.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButton(Icons.insert_chart, '5', 'Días en racha'),
                  SizedBox(width: 20.0),
                  _buildButton(Icons.star, '120', 'XP'),
                  SizedBox(width: 20.0),
                  _buildButton(Icons.attach_money, '25', 'Monedas'),
                ],
              ),
              SizedBox(height: 20.0, width: 20.0),
              _buildBoldText('Datos personales'),
              SizedBox(
                height: 10.0,
                width: 20.0,
              ),
              _buildBoldText('Clasificación'),
              SizedBox(
                height: 10.0,
                width: 20.0,
              ),
              _buildBoldText('Progreso'),
              SizedBox(height: 20.0),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/login_page',
                    (Route<dynamic> route) => false,
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout, color: Colors.grey.shade500),
                    SizedBox(width: 10.0),
                    Text(
                      'Cerrar Sesión',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(IconData icon, String value, String label) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.grey.shade500),
          SizedBox(height: 10.0),
          Text(value, style: TextStyle(fontSize: 18.0)),
          SizedBox(height: 10.0),
          Text(label, style: TextStyle(fontSize: 14.0)),
        ],
      ),
    );
  }

  Widget _buildBoldText(String text) {
    return Container(
      width: 290.0, // Set the width explicitly
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
