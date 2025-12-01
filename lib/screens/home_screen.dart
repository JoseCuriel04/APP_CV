import 'package:cv_curiel/screens/projects_screen.dart';
import 'package:cv_curiel/screens/skills_screen.dart';
import 'package:flutter/material.dart';
import 'package:cv_curiel/widgets/custom_app_bar.dart';
import 'package:cv_curiel/widgets/section_title.dart';
import 'package:cv_curiel/widgets/social_button.dart';
import 'package:cv_curiel/utils/constants.dart';
import 'package:cv_curiel/screens/education_screen.dart';
import 'package:cv_curiel/utils/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const CustomAppBar(title: 'José Luis Curiel López'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Foto de perfil (ajustada a 360x541)
            const SizedBox(height: 20),
            Center(
              child: Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/perfil.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Desarrollador Web & Móvil',
              style: AppTextStyles.titleStyle,
            ),
            const Text(
              'Apasionado por la tecnología y el desarrollo de soluciones innovadoras.',
              textAlign: TextAlign.center,
              style: AppTextStyles.subtitleStyle,
            ),
            const SizedBox(height: 20),
            // Botones de redes sociales
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialButton(
                  icon: Icons.code,
                  url: 'https://github.com/JoseCuriel04',
                ),
                SocialButton(
                  icon: Icons.work,
                  url:
                      'https://www.linkedin.com/in/jose-luis-curiel-lopez-8b0932374',
                ),
                SocialButton(
                  icon: Icons.language,
                  url: 'https://porttfoliojose-io.vercel.app',
                ),
              ],
            ),
            const SizedBox(height: 30),
            // Secciones
            const SectionTitle(title: 'Datos Profesionales'),
            const EducationSection(),
            const SectionTitle(title: 'Habilidades'),
            const SkillsSection(),
            const SectionTitle(title: 'Proyectos'),
            const ProjectsSection(),
            const SizedBox(height: 30),
            // Botón para descargar CV
            ElevatedButton.icon(
              onPressed: () => launchURL(
                'https://github.com/JoseCuriel04/Cursos/raw/main/my-cv.pdf',
              ),
              icon: const Icon(Icons.download, color: Colors.black),
              label: const Text(
                'Descargar CV en PDF',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF00FFC6),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
