import 'package:flutter/material.dart';
import 'package:cv_curiel/utils/constants.dart';
import 'package:cv_curiel/utils/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> projects = [
      {
        'title': 'EduSphere',
        'tech': 'HTML, CSS, JavaScript, PHP',
        'description': 'Plataforma educativa para la gestión escolar.',
        'codeLink': 'https://github.com/JoseCuriel04/EduSphere',
        'demoLink': 'https://github.com/JoseCuriel04/EduSphere',
      },
      {
        'title': 'SafeAlert',
        'tech': 'Flutter, Django, Firebase',
        'description': 'Aplicación móvil para reportar emergencias en tiempo real.',
        'codeLink': 'https://github.com/JoseCuriel04/SafeAlert',
        'demoLink': 'https://github.com/JoseCuriel04/SafeAlert',
      },
      {
        'title': 'Sistema Penitenciario',
        'tech': 'Java, MySQL',
        'description': 'Sistema para gestionar información en centros penitenciarios.',
        'codeLink': 'https://github.com/JoseCuriel04/Penitenciario',
        'demoLink': 'https://proyectopenitenciario.onrender.com/login/?next=',
      },
      {
        'title': 'Moodle Custom',
        'tech': 'PHP, MySQL',
        'description': 'Personalización y extensión de la plataforma Moodle.',
        'codeLink': 'https://docs.moodle.org/all/es/Página_Principal',
        'demoLink': 'http://200.79.182.105/moodle/',
      },
    ];

    return Column(
      children: projects.map((project) {
        return ProjectCard(
          title: project['title']!,
          tech: project['tech']!,
          description: project['description']!,
          codeLink: project['codeLink']!,
          demoLink: project['demoLink']!,
        );
      }).toList(),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String tech;
  final String description;
  final String codeLink;
  final String demoLink;

  const ProjectCard({
    super.key,
    required this.title,
    required this.tech,
    required this.description,
    required this.codeLink,
    required this.demoLink,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cardColor,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.subtitleColor,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: tech.split(', ')
                  .map((techItem) => Chip(
                        label: Text(
                          techItem,
                          style: const TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 12,
                          ),
                        ),
                        backgroundColor: AppColors.secondaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(color: AppColors.primaryColor),
                        ),
                      ))
                  .toList(),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () => launchURL(codeLink),
                  icon: const Icon(Icons.code, size: 18),
                  label: const Text('Ver Código'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondaryColor,
                    foregroundColor: AppColors.primaryColor,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(color: AppColors.primaryColor),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () => launchURL(demoLink),
                  icon: const Icon(Icons.language, size: 18),
                  label: const Text('Live'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    foregroundColor: AppColors.secondaryColor,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
