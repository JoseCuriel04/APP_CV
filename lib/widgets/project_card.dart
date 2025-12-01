import 'package:flutter/material.dart';
import 'package:cv_curiel/utils/constants.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final List<String> technologies;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.technologies,
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
            Text(title, style: AppTextStyles.titleStyle),
            const SizedBox(height: 8),
            Text(description, style: AppTextStyles.subtitleStyle),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children: technologies
                  .map((tech) => Chip(
                        label: Text(tech, style: const TextStyle(color: AppColors.primaryColor)),
                        backgroundColor: AppColors.secondaryColor,
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
