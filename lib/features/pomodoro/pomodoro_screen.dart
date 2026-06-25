import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/database/database_provider.dart';
import '../../design_system/studyhub_components.dart';
import '../shared/screen_frame.dart';

enum _PomodoroMode {
  focus(25, 'Focus', Icons.timer_rounded),
  shortBreak(5, 'Short break', Icons.coffee_rounded),
  longBreak(15, 'Long break', Icons.weekend_rounded);

  const _PomodoroMode(this.minutes, this.label, this.icon);

  final int minutes;
  final String label;
  final IconData icon;
}

class PomodoroScreen extends ConsumerStatefulWidget {
  const PomodoroScreen({super.key});

  @override
  ConsumerState<PomodoroScreen> createState() => _PomodoroScreenState();
}

class _PomodoroScreenState extends ConsumerState<PomodoroScreen> {
  _PomodoroMode _mode = _PomodoroMode.focus;
  Timer? _timer;
  late int _remainingSeconds = _mode.minutes * 60;
  var _completedFocusSessions = 0;

  bool get _running => _timer?.isActive ?? false;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final totalSeconds = _mode.minutes * 60;
    final progress = (1 - (_remainingSeconds / totalSeconds).clamp(0, 1))
        .toDouble();
    return ScreenFrame(
      children: [
        PremiumHeader(
          title: 'Pomodoro',
          subtitle: '$_completedFocusSessions focus sessions completed today',
        ),
        StudyCard(
          accent: Theme.of(context).colorScheme.primary,
          child: Column(
            children: [
              SegmentedButton<_PomodoroMode>(
                segments: [
                  for (final mode in _PomodoroMode.values)
                    ButtonSegment(
                      value: mode,
                      icon: Icon(mode.icon),
                      label: Text(mode.label),
                    ),
                ],
                selected: {_mode},
                onSelectionChanged: _running
                    ? null
                    : (value) => _setMode(value.first),
              ),
              const SizedBox(height: 28),
              SizedBox.square(
                dimension: 220,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(value: progress, strokeWidth: 14),
                    Center(
                      child: Text(
                        _formatTime(_remainingSeconds),
                        style: Theme.of(context).textTheme.displayMedium
                            ?.copyWith(fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  FilledButton.icon(
                    onPressed: _running ? _pause : _start,
                    icon: Icon(
                      _running ? Icons.pause_rounded : Icons.play_arrow_rounded,
                    ),
                    label: Text(_running ? 'Pause' : 'Start'),
                  ),
                  OutlinedButton.icon(
                    onPressed: _reset,
                    icon: const Icon(Icons.restart_alt_rounded),
                    label: const Text('Reset'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _setMode(_PomodoroMode mode) {
    setState(() {
      _mode = mode;
      _remainingSeconds = mode.minutes * 60;
    });
  }

  void _start() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (_remainingSeconds <= 1) {
        _completeSession();
        return;
      }
      setState(() => _remainingSeconds--);
    });
    setState(() {});
  }

  void _pause() {
    _timer?.cancel();
    setState(() {});
  }

  void _reset() {
    _timer?.cancel();
    setState(() => _remainingSeconds = _mode.minutes * 60);
  }

  Future<void> _completeSession() async {
    _timer?.cancel();
    final completedMode = _mode;
    if (completedMode == _PomodoroMode.focus) {
      await ref
          .read(appDatabaseProvider)
          .recordStudyActivity(minutesStudied: completedMode.minutes);
      _completedFocusSessions++;
    }
    if (!mounted) return;
    setState(() {
      _mode = completedMode == _PomodoroMode.focus
          ? _PomodoroMode.shortBreak
          : _PomodoroMode.focus;
      _remainingSeconds = _mode.minutes * 60;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('${completedMode.label} completed.')),
    );
  }

  String _formatTime(int seconds) {
    final minutes = seconds ~/ 60;
    final rest = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${rest.toString().padLeft(2, '0')}';
  }
}
