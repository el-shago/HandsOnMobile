import 'package:flutter/material.dart';

class LeccionesPage extends StatefulWidget {
  const LeccionesPage({super.key});

  @override
  State<LeccionesPage> createState() => _LeccionesPageState();
}

class _LeccionesPageState extends State<LeccionesPage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      switch (_selectedIndex) {
        case 0:
          // Navigate to Perfil Page
          break;
        case 1:
          // Stay on Lecciones Page
          break;
        case 2:
          // Navigate to Ajustes Page
          break;
      }
    });
  }

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
                  fontWeight: FontWeight.bold),
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
                children: const [
                  LessonItem(
                    isChecked: true,
                    label: 'Alfabeto',
                  ),
                  LessonItem(
                    isChecked: true,
                    label: 'Números',
                  ),
                  LessonItem(
                    isChecked: false,
                    label: 'Saludos',
                  ),
                  LessonItem(
                    isChecked: false,
                    label: 'Familia',
                  ),
                  LessonItem(
                    isChecked: false,
                    label: 'Objetos',
                  ),
                  LessonItem(
                    isChecked: false,
                    label: 'Alfabeto',
                  ),
                  LessonItem(
                    isChecked: false,
                    label: 'Números',
                  ),
                  LessonItem(
                    isChecked: false,
                    label: 'Saludos',
                  ),
                  LessonItem(
                    isChecked: false,
                    label: 'Familia',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Set the current index
        onTap: _onItemTapped, // Handle item taps
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Lecciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ajustes',
          ),
        ],
      ),
    );
  }
}

class LessonItem extends StatelessWidget {
  final bool isChecked;
  final String label;

  const LessonItem({
    Key? key,
    required this.isChecked,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(
            isChecked ? Icons.check_circle : Icons.circle,
            color: isChecked ? Colors.green : Colors.grey,
            size: 30,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.yellow.shade200,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                label,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
