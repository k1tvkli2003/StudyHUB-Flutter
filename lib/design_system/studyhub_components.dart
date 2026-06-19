import 'dart:ui';

import 'package:flutter/material.dart';

import 'studyhub_colors.dart';

class StudyCard extends StatelessWidget {
  const StudyCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(18),
    this.onTap,
    this.radius = 20,
    this.accent,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  final double radius;
  final Color? accent;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final content = AnimatedContainer(
      duration: const Duration(milliseconds: 180),
      padding: padding,
      decoration: BoxDecoration(
        color: colors.surface.withOpacity(0.94),
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: (accent ?? colors.outlineVariant).withOpacity(accent == null ? 1 : 0.42)),
        boxShadow: [
          if (accent != null) BoxShadow(color: accent!.withOpacity(0.08), blurRadius: 26, offset: const Offset(0, 14)),
        ],
      ),
      child: child,
    );
    if (onTap == null) return content;
    return InkWell(borderRadius: BorderRadius.circular(radius), onTap: onTap, child: content);
  }
}

class GlassPanel extends StatelessWidget {
  const GlassPanel({super.key, required this.child, this.padding = const EdgeInsets.all(16), this.radius = 24});

  final Widget child;
  final EdgeInsetsGeometry padding;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: colors.surface.withOpacity(0.72),
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: colors.outlineVariant),
          ),
          child: child,
        ),
      ),
    );
  }
}

class PremiumHeader extends StatelessWidget {
  const PremiumHeader({super.key, required this.title, this.subtitle, this.trailing});

  final String title;
  final String? subtitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShaderMask(
                shaderCallback: (rect) => LinearGradient(
                  colors: [colors.primary, colors.secondary, colors.tertiary],
                ).createShader(rect),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
                ),
              ),
              if (subtitle != null) ...[
                const SizedBox(height: 6),
                Text(subtitle!, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: colors.onSurfaceVariant)),
              ],
            ],
          ),
        ),
        if (trailing != null) trailing!,
      ],
    );
  }
}

class CosmicBackground extends StatelessWidget {
  const CosmicBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: dark
              ? const [StudyHubColors.cosmicBaseDark, StudyHubColors.cosmicMidDark, StudyHubColors.backgroundDark]
              : const [Colors.white, StudyHubColors.backgroundLight, Color(0xFFE7ECF3)],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -90,
            right: -70,
            child: _Nebula(color: StudyHubColors.cosmicNebulaPurple.withOpacity(dark ? 0.24 : 0.12), size: 240),
          ),
          Positioned(
            bottom: -110,
            left: -90,
            child: _Nebula(color: StudyHubColors.cosmicNebulaCyan.withOpacity(dark ? 0.20 : 0.10), size: 280),
          ),
          child,
        ],
      ),
    );
  }
}

class _Nebula extends StatelessWidget {
  const _Nebula({required this.color, required this.size});

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(colors: [color, color.withOpacity(0)]),
        ),
      );
}

class StudyChip extends StatelessWidget {
  const StudyChip({super.key, required this.label, this.icon, this.selected = false, this.onTap});

  final String label;
  final IconData? icon;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return InkWell(
      borderRadius: BorderRadius.circular(999),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? colors.primary : colors.primaryContainer,
          borderRadius: BorderRadius.circular(999),
          border: Border.all(color: colors.primary.withOpacity(selected ? 0 : 0.28)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, size: 16, color: selected ? colors.onPrimary : colors.primary),
              const SizedBox(width: 6),
            ],
            Text(
              label,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: selected ? colors.onPrimary : colors.primary,
                    fontWeight: FontWeight.w900,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
