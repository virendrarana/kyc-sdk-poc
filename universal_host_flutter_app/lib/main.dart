import 'package:flutter/material.dart';
import 'package:universal_experience_module/universal_experience_sdk.dart';

void main() {
  runApp(const HostApp());
}

class HostApp extends StatelessWidget {
  const HostApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Universal Host Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4F46E5),
        ),
        useMaterial3: true,
      ),
      home: const HostHomeScreen(),
    );
  }
}

class HostHomeScreen extends StatelessWidget {
  const HostHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Host App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const UniversalExperienceScreen(
                  hostAppName: 'Flutter Host App',
                ),
              ),
            );
          },
          child: const Text('Open Universal SDK (Flutter)'),
        ),
      ),
    );
  }
}
