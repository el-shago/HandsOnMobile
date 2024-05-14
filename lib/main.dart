import 'package:flutter/material.dart';
import 'package:hands_on_flutter/presentation/RegisterPage.dart';
import 'package:hands_on_flutter/enums/Routes.dart';
import 'package:hands_on_flutter/presentation/LoginPage.dart';

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
        Routes.registerPage.route: (context) {
          final _aux = ModalRoute.of(context)!.settings.arguments as String;
          return LoginPage(); //(userName: _aux);
        },
        Routes.registerPage.route: (context) => RegisterPage(),
        Routes.registerPage.route: (context) => LoginPage(),
      },

      initialRoute: Routes.registerPage.route,
    );
  }
}
