import 'package:flutter/material.dart';

class CompletedCoursePage extends StatelessWidget {
  const CompletedCoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curso Completado',
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(148, 236, 137, 1.0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.green.shade300,
                    width: 4.0,
                  ),
                ),
                child: Icon(
                  Icons.check,
                  color: const Color.fromRGBO(148, 236, 137, 1.0),
                  size: 48.0,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Curso Completado',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '+100 xp',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}