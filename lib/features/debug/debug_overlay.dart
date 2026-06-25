import 'package:flutter/material.dart';

class DebugOverlay extends StatelessWidget {
  const DebugOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 12,
      bottom: 84,
      child: FloatingActionButton.small(
        onPressed: () => showModalBottomSheet<void>(
          context: context,
          builder: (context) => Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Debug', style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 12),
                Text('Platform: ${Theme.of(context).platform.name}'),
                Text(
                  'Size: ${MediaQuery.sizeOf(context).width.toStringAsFixed(0)} x ${MediaQuery.sizeOf(context).height.toStringAsFixed(0)}',
                ),
              ],
            ),
          ),
        ),
        child: const Icon(Icons.bug_report_rounded),
      ),
    );
  }
}
