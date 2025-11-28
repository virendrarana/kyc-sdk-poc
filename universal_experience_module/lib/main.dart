import 'package:flutter/material.dart';
import 'universal_experience_sdk.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const UniversalExperiencePreviewApp());
}

class UniversalExperiencePreviewApp extends StatelessWidget {
  const UniversalExperiencePreviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Universal Experience SDK',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4F46E5)),
        useMaterial3: true,
      ),
      home: const UniversalExperienceScreen(hostAppName: 'Module Demo'),
    );
  }
}
