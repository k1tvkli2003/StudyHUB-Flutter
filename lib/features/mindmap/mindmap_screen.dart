import 'package:flutter/material.dart';

import '../../design_system/studyhub_components.dart';
import '../shared/screen_frame.dart';

class MindMapScreen extends StatefulWidget {
  const MindMapScreen({super.key});

  @override
  State<MindMapScreen> createState() => _MindMapScreenState();
}

class _MindMapScreenState extends State<MindMapScreen> {
  final _controller = TextEditingController(text: 'Cardiac cycle');

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      children: [
        const PremiumHeader(title: 'Mind Map', subtitle: 'Generate and inspect concept maps from a focused topic'),
        StudyCard(
          child: Row(
            children: [
              Expanded(child: TextField(controller: _controller, decoration: const InputDecoration(labelText: 'Topic'))),
              const SizedBox(width: 10),
              FilledButton.icon(onPressed: () => setState(() {}), icon: const Icon(Icons.account_tree_rounded), label: const Text('Generate')),
            ],
          ),
        ),
        StudyCard(
          accent: Theme.of(context).colorScheme.tertiary,
          child: SizedBox(
            height: 360,
            child: CustomPaint(
              painter: _MindMapPainter(topic: _controller.text),
              child: const SizedBox.expand(),
            ),
          ),
        ),
      ],
    );
  }
}

class _MindMapPainter extends CustomPainter {
  _MindMapPainter({required this.topic});

  final String topic;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final paint = Paint()
      ..color = const Color(0xFF7CA2DE)
      ..strokeWidth = 2;
    final nodes = [
      center + const Offset(-130, -90),
      center + const Offset(130, -80),
      center + const Offset(-110, 90),
      center + const Offset(130, 90),
    ];
    for (final node in nodes) {
      canvas.drawLine(center, node, paint..color = const Color(0x667CA2DE));
      canvas.drawCircle(node, 34, Paint()..color = const Color(0x335ED4A7));
    }
    canvas.drawCircle(center, 52, Paint()..color = const Color(0x5599B8EA));
    final tp = TextPainter(
      text: TextSpan(text: topic, style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(maxWidth: 96);
    tp.paint(canvas, center - Offset(tp.width / 2, tp.height / 2));
  }

  @override
  bool shouldRepaint(covariant _MindMapPainter oldDelegate) => oldDelegate.topic != topic;
}
