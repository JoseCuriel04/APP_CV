import 'package:flutter/material.dart';
import 'package:cv_curiel/widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProjectCard(
          title: 'EduSphere',
          description: 'Plataforma educativa con PHP, JavaScript y HTML5.',
          technologies: ['PHP', 'JavaScript', 'HTML5', 'CSS3'],
        ),
        ProjectCard(
          title: 'SafeAlert',
          description: 'Aplicación de emergencia para Android.',
          technologies: ['Java', 'Android Studio'],
        ),
        ProjectCard(
          title: 'Sistema Penitenciario',
          description: 'Gestión de internos con Django y SQLite.',
          technologies: ['Python', 'Django', 'SQLite'],
        ),
        ProjectCard(
          title: 'Servidor Moodle',
          description: 'Implementación en Ubuntu con MariaDB.',
          technologies: ['Ubuntu', 'MariaDB', 'Moodle'],
        ),
      ],
    );
  }
}
