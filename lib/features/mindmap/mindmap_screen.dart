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
  var _nodes = const ['Definition', 'Mechanism', 'Examples', 'Review'];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      children: [
        const PremiumHeader(
          title: 'Mind Map',
          subtitle: 'Generate and inspect concept maps from a focused topic',
        ),
        StudyCard(
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(labelText: 'Topic'),
                ),
              ),
              const SizedBox(width: 10),
              FilledButton.icon(
                onPressed: _generate,
                icon: const Icon(Icons.account_tree_rounded),
                label: const Text('Generate'),
              ),
            ],
          ),
        ),
        StudyCard(
          accent: Theme.of(context).colorScheme.tertiary,
          child: SizedBox(
            height: 360,
            child: CustomPaint(
              painter: _MindMapPainter(topic: _controller.text, nodes: _nodes),
              child: const SizedBox.expand(),
            ),
          ),
        ),
      ],
    );
  }

  void _generate() {
    final words = _controller.text
        .split(RegExp(r'[\s,;:/\\|]+'))
        .map((word) => word.trim())
        .where((word) => word.length > 2)
        .toList();
    setState(() {
      _nodes = [
        if (words.isEmpty) 'Definition' else '${words.first} basics',
        if (words.length > 1) '${words[1]} links' else 'Mechanism',
        if (words.length > 2) '${words[2]} checks' else 'Examples',
        'Review',
      ];
    });
  }
}

class _MindMapPainter extends CustomPainter {
  _MindMapPainter({required this.topic, required this.nodes});

  final String topic;
  final List<String> nodes;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final paint = Paint()
      ..color = const Color(0xFF7CA2DE)
      ..strokeWidth = 2;
    final nodeOffsets = [
      center + const Offset(-130, -90),
      center + const Offset(130, -80),
      center + const Offset(-110, 90),
      center + const Offset(130, 90),
    ];
    for (var i = 0; i < nodeOffsets.length; i++) {
      final node = nodeOffsets[i];
      canvas.drawLine(center, node, paint..color = const Color(0x667CA2DE));
      canvas.drawCircle(node, 34, Paint()..color = const Color(0x335ED4A7));
      _paintText(canvas, nodes[i], node, 82, 11);
    }
    canvas.drawCircle(center, 52, Paint()..color = const Color(0x5599B8EA));
    _paintText(canvas, topic, center, 96, 14, bold: true);
  }

  void _paintText(
    Canvas canvas,
    String text,
    Offset center,
    double maxWidth,
    double fontSize, {
    bool bold = false,
  }) {
    final tp = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: bold ? FontWeight.bold : FontWeight.w700,
        ),
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(maxWidth: maxWidth);
    tp.paint(canvas, center - Offset(tp.width / 2, tp.height / 2));
  }

  @override
  bool shouldRepaint(covariant _MindMapPainter oldDelegate) =>
      oldDelegate.topic != topic || oldDelegate.nodes != nodes;
}
