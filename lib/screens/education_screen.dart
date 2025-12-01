import 'package:flutter/material.dart';
import 'package:cv_curiel/utils/constants.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: AppColors.cardColor,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              title: Text('Universidad Politécnica de Tulancingo', style: AppTextStyles.titleStyle),
              subtitle: Text('Ing Sistemas Computacionales (2022-Presente)', style: AppTextStyles.subtitleStyle),
            ),
            ListTile(
              title: Text('Conalep Tulancingo', style: AppTextStyles.titleStyle),
              subtitle: Text('PT-B Mantenimiento en Sistemas Electrónicos (2019-2022)', style: AppTextStyles.subtitleStyle),
            ),
          ],
        ),
      ),
    );
  }
}
