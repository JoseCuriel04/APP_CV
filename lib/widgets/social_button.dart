import 'package:flutter/material.dart';
import 'package:cv_curiel/utils/url_launcher.dart';

class SocialButton extends StatelessWidget {
  final IconData icon;
  final String url;

  const SocialButton({super.key, required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, size: 30, color: Colors.white),
      onPressed: () => launchURL(url),
    );
  }
}
