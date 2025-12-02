import 'package:flutter/material.dart';
import 'package:cv_curiel/utils/constants.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.cardColor,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const ListTile(
              title: Text('Universidad Politécnica de Tulancingo', style: AppTextStyles.titleStyle),
              subtitle: Text('Desarrollo de Software (2022-Presente)', style: AppTextStyles.subtitleStyle),
            ),
            const Divider(color: AppColors.primaryColor),
            ListTile(
              title: const Text('Conalep Tulancingo', style: AppTextStyles.titleStyle),
              subtitle: const Text('PT-B Mantenimiento en Sistemas Electrónicos (2019-2022)', style: AppTextStyles.subtitleStyle),
              trailing: IconButton(
                icon: const Icon(Icons.picture_as_pdf, color: AppColors.primaryColor),
                onPressed: () async {
                  final tempDir = await getTemporaryDirectory();
                  final tempPath = '${tempDir.path}/titulo_conalep.pdf';
                  final file = File(tempPath);

                  // Copia el PDF desde los assets a la ruta temporal
                  final data = await DefaultAssetBundle.of(context).load('assets/pdf/titulo_conalep.pdf');
                  final bytes = data.buffer.asUint8List();
                  await file.writeAsBytes(bytes);

                  // Navega a la pantalla del PDF
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PDFViewerScreen(pdfPath: tempPath),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PDFViewerScreen extends StatelessWidget {
  final String pdfPath;

  const PDFViewerScreen({super.key, required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Título Conalep'),
        backgroundColor: AppColors.secondaryColor,
      ),
      body: PDFView(
        filePath: pdfPath,
        enableSwipe: true,
        swipeHorizontal: false,
        autoSpacing: false,
        pageFling: false,
        onError: (error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error al cargar el PDF: $error')),
          );
        },
        onPageError: (page, error) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error en la página $page: $error')),
          );
        },
      ),
    );
  }
}