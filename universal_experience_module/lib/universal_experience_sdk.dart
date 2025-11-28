import 'package:flutter/material.dart';

/// This is the SDK screen we want to show everywhere.
class UniversalExperienceScreen extends StatelessWidget {
  final String hostAppName;

  const UniversalExperienceScreen({
    super.key,
    this.hostAppName = 'Unknown Host',
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Universal Experience SDK')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello from Universal SDK 👋',
              style: theme.textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Text(
              'Host app: $hostAppName',
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Text(
              'How is your experience so far?',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              children: List.generate(
                5,
                (index) =>
                    const Icon(Icons.star, color: Colors.amber, size: 32),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Thanks for trying the Universal SDK!'),
                  ),
                );
              },
              child: const Text('Submit rating'),
            ),
          ],
        ),
      ),
    );
  }
}
