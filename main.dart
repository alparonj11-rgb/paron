import 'package:flutter/material.dart';
import 'theme.dart';
import 'welcome_screen.dart';

void main() {
  runApp(const ScrubStudioApp());
}

// ==========================================
// 2. التطبيق الرئيسي (Main App Widget)
// ==========================================
class ScrubStudioApp extends StatelessWidget {
  const ScrubStudioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scrub Studio',
      theme: appTheme,
      home: const WelcomeScreen(),
    );
  }
}
