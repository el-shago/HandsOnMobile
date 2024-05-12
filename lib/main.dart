import 'package:flutter/material.dart';
import 'package:hands_on_flutter/presentation/RegisterPage.dart';
import 'package:hands_on_flutter/enums/Routes.dart';
import 'package:hands_on_flutter/presentation/UserSettingsPage.dart';
import 'package:hands_on_flutter/presentation/CompletedCoursePage.dart';

void main() {
  runApp(const NavigatorPagesCetys());
}

class NavigatorPagesCetys extends StatelessWidget {
  const NavigatorPagesCetys({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: FirstPageWidget(),

      routes: {
        Routes.registerPage.route: (context) => RegisterPage(),
        Routes.usersettingsPage.route: (context) => UserSettingsPage(),
        Routes.completedcoursePage.route: (context) => CompletedCoursePage(),
        // Puedes agregar más rutas aquí según sea necesario
      },

      initialRoute: Routes.completedcoursePage.route,
    );
  }
}
