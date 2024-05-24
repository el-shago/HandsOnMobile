import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ajustes',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificaciones'),
            trailing: Switch(
              value: _notifications,
              onChanged: (bool value) {
                setState(() {
                  _notifications = value;
                });
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Idioma'),
            subtitle: Text('Español'),
            onTap: () {
              // Handle language change
            },
          ),
          ListTile(
            leading: Icon(Icons.palette),
            title: Text('Tema'),
            onTap: () {
              // Handle theme change
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Información de la cuenta'),
            onTap: () {
              // Handle account information
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Seguridad'),
            onTap: () {
              // Handle security settings
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Términos de servicio'),
            onTap: () {
              // Handle terms of service
            },
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text('Política de privacidad'),
            onTap: () {
              // Handle privacy policy
            },
          ),
          ListTile(
            leading: Icon(Icons.article),
            title: Text('Licencias'),
            onTap: () {
              // Handle licenses
            },
          ),
        ],
      ),
    );
  }
}
