import 'package:flutter/material.dart';

class LeccionesPage extends StatelessWidget {
  const LeccionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F5F5),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Lecciones',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 8),
            Image.asset(
              'assets/images/manitas.png',
              height: 60, // Adjust the height as needed
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: const Color(0xFFF5F5F5),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                '¡Es hora de aprender, Iso!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  // Each LessonCard without navigation action
                  LessonCard(
                    imagePath: 'assets/images/manitas.png',
                    label: 'Alfabeto',
                    backgroundColor: Colors.amber,
                    onTap: () {},
                  ),
                  LessonCard(
                    imagePath: 'assets/images/manitas.png',
                    label: 'Números',
                    backgroundColor: Colors.orange,
                    onTap: () {},
                  ),
                  LessonCard(
                    imagePath: 'assets/images/manitas.png',
                    label: 'Saludos',
                    backgroundColor: Colors.blue,
                    onTap: () {},
                  ),
                  LessonCard(
                    imagePath: 'assets/images/manitas.png',
                    label: 'Familia',
                    backgroundColor: Colors.indigo,
                    onTap: () {},
                  ),
                  LessonCard(
                    imagePath: 'assets/images/manitas.png',
                    label: 'Objetos',
                    backgroundColor: Colors.purple,
                    onTap: () {},
                  ),
                  LessonCard(
                    imagePath: 'assets/images/manitas.png',
                    label: 'Alfabeto',
                    backgroundColor: Colors.green,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// LessonCard widget to display each lesson item
class LessonCard extends StatelessWidget {
  final String imagePath;
  final String label;
  final Color backgroundColor;
  final VoidCallback onTap;

  const LessonCard({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.backgroundColor,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Image.asset(
                imagePath,
                height: 60, // Adjust the height as needed
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  label,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
