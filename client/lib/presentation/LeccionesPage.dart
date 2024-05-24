import 'package:flutter/material.dart';

import 'ExerciseScreen.dart';
import 'ReadingScreen.dart';

class LeccionesPage extends StatelessWidget {
  const LeccionesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        color: Colors.white,
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
                  LessonCard(
                    imagePath: 'assets/images/sign_b.png',
                    label: 'Alfabeto',
                    backgroundColor: Color.fromRGBO(162, 118, 255, 1),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReadingScreen(
                            signs: [
                              {
                                'letter': 'A',
                                'imagePath': 'assets/images/sign_a.png'
                              },
                              {
                                'letter': 'B',
                                'imagePath': 'assets/images/sign_b.png'
                              },
                              {
                                'letter': 'C',
                                'imagePath': 'assets/images/sign_c.png'
                              },
                              {
                                'letter': 'D',
                                'imagePath': 'assets/images/sign_d.png'
                              },
                              {
                                'letter': 'E',
                                'imagePath': 'assets/images/sign_e.png'
                              },
                              {
                                'letter': 'F',
                                'imagePath': 'assets/images/sign_f.png'
                              },
                              {
                                'letter': 'G',
                                'imagePath': 'assets/images/sign_g.png'
                              },
                              {
                                'letter': 'H',
                                'imagePath': 'assets/images/sign_h.png'
                              },
                              {
                                'letter': 'I',
                                'imagePath': 'assets/images/sign_i.png'
                              },
                              {
                                'letter': 'J',
                                'imagePath': 'assets/images/sign_j.png'
                              },
                              {
                                'letter': 'K',
                                'imagePath': 'assets/images/sign_k.png'
                              },
                              {
                                'letter': 'L',
                                'imagePath': 'assets/images/sign_l.png'
                              },
                              {
                                'letter': 'M',
                                'imagePath': 'assets/images/sign_m.png'
                              },
                              {
                                'letter': 'N',
                                'imagePath': 'assets/images/sign_n.png'
                              },
                              {
                                'letter': 'O',
                                'imagePath': 'assets/images/sign_o.png'
                              },
                              {
                                'letter': 'P',
                                'imagePath': 'assets/images/sign_p.png'
                              },
                              {
                                'letter': 'Q',
                                'imagePath': 'assets/images/sign_q.png'
                              },
                              {
                                'letter': 'R',
                                'imagePath': 'assets/images/sign_r.png'
                              },
                              {
                                'letter': 'S',
                                'imagePath': 'assets/images/sign_s.png'
                              },
                              {
                                'letter': 'T',
                                'imagePath': 'assets/images/sign_t.png'
                              },
                              {
                                'letter': 'U',
                                'imagePath': 'assets/images/sign_u.png'
                              },
                              {
                                'letter': 'V',
                                'imagePath': 'assets/images/sign_v.png'
                              },
                              {
                                'letter': 'W',
                                'imagePath': 'assets/images/sign_w.png'
                              },
                              {
                                'letter': 'X',
                                'imagePath': 'assets/images/sign_x.png'
                              },
                              {
                                'letter': 'Y',
                                'imagePath': 'assets/images/sign_y.png'
                              },
                              {
                                'letter': 'Z',
                                'imagePath': 'assets/images/sign_z.png'
                              },
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  LessonCard(
                    imagePath: 'assets/images/numbers.png',
                    label: 'Números',
                    backgroundColor: Color.fromRGBO(254, 108, 171, 1),
                    onTap: () {},
                  ),
                  LessonCard(
                    imagePath: 'assets/images/greetings.png',
                    label: 'Saludos',
                    backgroundColor: Color.fromRGBO(45, 212, 73, 1),
                    onTap: () {},
                  ),
                  LessonCard(
                    imagePath: 'assets/images/family.png',
                    label: 'Familia',
                    backgroundColor: Color.fromRGBO(239, 232, 50, 1),
                    onTap: () {},
                  ),
                  LessonCard(
                    imagePath: 'assets/images/ball.png',
                    label: 'Objetos',
                    backgroundColor: Color.fromRGBO(108, 228, 254, 1),
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
