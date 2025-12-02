import 'package:flutter/material.dart';
import 'package:cv_curiel/widgets/skill_icon.dart';
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
            SizedBox(
              height: 250, // Altura fija para el GridView
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    SkillIcon(iconPath: 'html.png', label: 'HTML'),
                    SkillIcon(iconPath: 'css.png', label: 'CSS'),
                    SkillIcon(iconPath: 'js.jpg', label: 'JavaScript'),
                    SkillIcon(iconPath: 'php.png', label: 'PHP'),
                    SkillIcon(iconPath: 'python.png', label: 'Python'),
                    SkillIcon(iconPath: 'mysql.png', label: 'MySQL'),
                    SkillIcon(iconPath: 'git.png', label: 'Git'),
                    SkillIcon(iconPath: 'github.png', label: 'GitHub'),
                    SkillIcon(iconPath: 'vscode.png', label: 'VS Code'),
                    SkillIcon(iconPath: 'visualstudio.png', label: 'Visual Studio'),
                    SkillIcon(iconPath: 'androidstudio.png', label: 'Android Studio'),
                    SkillIcon(iconPath: 'arduino.png', label: 'Arduino'),
                    SkillIcon(iconPath: 'flutter.png', label: 'Flutter'),
                    SkillIcon(iconPath: 'dart.png', label: 'Dart'),
                    SkillIcon(iconPath: 'idea.png', label: 'IntelliJ IDEA'),
                    SkillIcon(iconPath: 'django.png', label: 'Django'),
                    SkillIcon(iconPath: 'java.png', label: 'Java'),
                    SkillIcon(iconPath: 'sqlite.png', label: 'SQLite'),
                    SkillIcon(iconPath: 'xampp.png', label: 'XAMPP'),
                    SkillIcon(iconPath: 'azure.png', label: 'Azure'),
                    SkillIcon(iconPath: 'vercel.png', label: 'Vercel'),
                    SkillIcon(iconPath: 'netlify.png', label: 'Netlify'),
                    SkillIcon(iconPath: 'mysql_workbench.png', label: 'MySQL Workbench'),
                    SkillIcon(iconPath: 'thonny.png', label: 'Thonny'),
                    SkillIcon(iconPath: 'esp32.jpg', label: 'ESP32'),
                    SkillIcon(iconPath: 'virtualbox.png', label: 'VirtualBox'),
                    SkillIcon(iconPath: 'mariadb.png', label: 'MariaDB'),
                    SkillIcon(iconPath: 'cisco.png', label: 'Cisco'),
                    SkillIcon(iconPath: 'moodle.png', label: 'Moodle'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
