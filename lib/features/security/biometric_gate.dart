import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_auth/local_auth.dart';

import '../../data/repositories/providers.dart';
import '../../design_system/studyhub_components.dart';

class BiometricGate extends ConsumerStatefulWidget {
  const BiometricGate({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<BiometricGate> createState() => _BiometricGateState();
}

class _BiometricGateState extends ConsumerState<BiometricGate> {
  final _auth = LocalAuthentication();
  var _authorized = false;
  var _authInFlight = false;
  String? _message;

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsRepositoryProvider);
    final repo = settings.value;
    if (settings.isLoading && repo == null) {
      return const _LockSurface(loading: true);
    }
    if (repo == null || !repo.biometricLockEnabled) {
      _authorized = false;
      return widget.child;
    }
    if (_authorized) return widget.child;
    _queueAuthentication();
    return _LockSurface(
      loading: _authInFlight,
      message: _message,
      onUnlock: _queueAuthentication,
    );
  }

  void _queueAuthentication() {
    if (_authInFlight || _authorized) return;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted || _authInFlight || _authorized) return;
      setState(() {
        _authInFlight = true;
        _message = null;
      });
      try {
        final supported = await _auth.isDeviceSupported();
        if (!supported) {
          if (!mounted) return;
          setState(() => _authorized = true);
          return;
        }
        final ok = await _auth.authenticate(
          localizedReason: 'Unlock StudyHUB',
          biometricOnly: false,
          sensitiveTransaction: false,
          persistAcrossBackgrounding: true,
        );
        if (!mounted) return;
        setState(() {
          _authorized = ok;
          _message = ok ? null : 'Authentication was cancelled.';
        });
      } catch (error) {
        if (!mounted) return;
        setState(
          () => _message = 'Authentication is unavailable on this device.',
        );
      } finally {
        if (mounted) setState(() => _authInFlight = false);
      }
    });
  }
}

class _LockSurface extends StatelessWidget {
  const _LockSurface({this.loading = false, this.message, this.onUnlock});

  final bool loading;
  final String? message;
  final VoidCallback? onUnlock;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      body: CosmicBackground(
        child: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 360),
              child: StudyCard(
                accent: colors.primary,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.lock_rounded, size: 42, color: colors.primary),
                    const SizedBox(height: 14),
                    Text(
                      'StudyHUB is locked',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      message ??
                          'Authenticate with device biometrics or passcode.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 18),
                    FilledButton.icon(
                      onPressed: loading ? null : onUnlock,
                      icon: loading
                          ? const SizedBox.square(
                              dimension: 18,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Icon(Icons.fingerprint_rounded),
                      label: const Text('Unlock'),
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
