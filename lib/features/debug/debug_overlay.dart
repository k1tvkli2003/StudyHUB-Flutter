import 'package:flutter/material.dart';

class DebugOverlay extends StatelessWidget {
  const DebugOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 12,
      bottom: 84,
      child: FloatingActionButton.small(
        onPressed: () {},
        child: const Icon(Icons.bug_report_rounded),
      ),
    );
  }
}
