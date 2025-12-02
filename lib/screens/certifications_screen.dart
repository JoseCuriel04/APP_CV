import 'package:flutter/material.dart';
import 'package:cv_curiel/utils/constants.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class CertificationsSection extends StatelessWidget {
  const CertificationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> certifications = [
      {
        'title': 'Administrador de Bases de Datos',
        'pdf': 'Administrador_de_bases_de_datos.pdf',
        'icon': '📚',
      },
      {
        'title': 'Cómputo Básico',
        'pdf': 'Computo_basico.pdf',
        'icon': '💻',
      },
      {
        'title': 'Desarrollador Front-End',
        'pdf': 'Desarrollador_Front-end.pdf',
        'icon': '🌐',
      },
      {
        'title': 'Introducción a la Programación',
        'pdf': 'Introduccion_a_la_programacion.pdf',
        'icon': '👨‍💻',
      },
      {
        'title': 'Python 101 for Data Science',
        'pdf': 'Python_101_for_Data_Science.pdf',
        'icon': '🐍',
      },
      {
        'title': 'Fundamentos de Python 1',
        'pdf': 'Fundamentos_de_Python_1.pdf',
        'icon': '🐍',
      },
      {
        'title': 'CCNAv7: Enterprise Networking, Security, and Automation',
        'pdf': 'CCNAv7_Enterprise_Networking_Security_and_Automation.pdf',
        'icon': '🔒',
      },
      {
        'title': 'CCNAv7: Switching, Routing, and Wireless Essentials',
        'pdf': 'CCNAv7_Switching_Routing_and_Wireless_Essentials.pdf',
        'icon': '📡',
      },
      {
        'title': 'CCNAv7: Introduction to Networks',
        'pdf': 'CCNAv7_Introduction_to_Networks.pdf',
        'icon': '🌐',
      },
      {
        'title': 'Fortinet Certified Fundamentals in Cybersecurity',
        'pdf': 'Fortinet_Certified_Fundamentals_in_Cybersecurity.pdf',
        'icon': '🔐',
      },
    ];

    return Card(
      color: AppColors.cardColor,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '📜 Certificaciones y Logros',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(height: 12),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: certifications.length,
              itemBuilder: (context, index) {
                final certification = certifications[index];
                return ListTile(
                  leading: Text(
                    certification['icon']!,
                    style: const TextStyle(fontSize: 24),
                  ),
                  title: Text(
                    certification['title']!,
                    style: const TextStyle(color: Colors.white),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.picture_as_pdf, color: AppColors.primaryColor),
                    onPressed: () async {
                      await _showPDF(context, certification['pdf']!);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showPDF(BuildContext context, String pdfAsset) async {
    final tempDir = await getTemporaryDirectory();
    final tempPath = '${tempDir.path}/$pdfAsset';
    final file = File(tempPath);

    try {
      final data = await DefaultAssetBundle.of(context).load('assets/pdf/$pdfAsset');
      final bytes = data.buffer.asUint8List();
      await file.writeAsBytes(bytes);

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PDFViewerScreen(pdfPath: tempPath),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error al cargar el PDF: $e')),
      );
    }
  }
}

class PDFViewerScreen extends StatelessWidget {
  final String pdfPath;

  const PDFViewerScreen({super.key, required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Certificación'),
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
