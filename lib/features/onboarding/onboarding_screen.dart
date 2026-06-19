import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../data/repositories/providers.dart';
import '../../design_system/studyhub_components.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CosmicBackground(
        child: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 560),
              child: StudyCard(
                padding: const EdgeInsets.all(28),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/images/app_icon.png', width: 110),
                    const SizedBox(height: 18),
                    Image.asset('assets/images/namelogo.png', height: 42),
                    const SizedBox(height: 14),
                    Text('Local-first AI study, now multi-platform.', textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 20),
                    FilledButton.icon(
                      onPressed: () async {
                        final repo = await ref.read(settingsRepositoryProvider.future);
                        await repo.setOnboardingCompleted(true);
                        if (context.mounted) context.go('/dashboard');
                      },
                      icon: const Icon(Icons.arrow_forward_rounded),
                      label: const Text('Start studying'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
