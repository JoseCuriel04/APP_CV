import 'package:flutter/material.dart';
import 'package:cv_curiel/widgets/skill_chip.dart';
import 'package:cv_curiel/utils/constants.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: AppColors.cardColor,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tecnologías y Herramientas',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                SkillChip(label: 'HTML'),
                SkillChip(label: 'CSS'),
                SkillChip(label: 'JavaScript'),
                SkillChip(label: 'PHP'),
                SkillChip(label: 'Python'),
                SkillChip(label: 'MySQL'),
                SkillChip(label: 'Git'),
                SkillChip(label: 'GitHub'),
                SkillChip(label: 'VS Code'),
                SkillChip(label: 'Visual Studio'),
                SkillChip(label: 'Android Studio'),
                SkillChip(label: 'Arduino'),
                SkillChip(label: 'Flutter'),
                SkillChip(label: 'Dart'),
                SkillChip(label: 'IntelliJ IDEA'),
                SkillChip(label: 'Django'),
                SkillChip(label: 'Java'),
                SkillChip(label: 'SQLite'),
                SkillChip(label: 'XAMPP'),
                SkillChip(label: 'Azure'),
                SkillChip(label: 'Vercel'),
                SkillChip(label: 'Netlify'),
                SkillChip(label: 'MySQL Workbench'),
                SkillChip(label: 'Thonny'),
                SkillChip(label: 'ESP32'),
                SkillChip(label: 'VirtualBox'),
                SkillChip(label: 'MariaDB'),
                SkillChip(label: 'Cisco'),
                SkillChip(label: 'Moodle'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
