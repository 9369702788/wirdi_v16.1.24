import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';
import '../../l10n/generated/app_localizations.dart';

/// Screen 1 — Splash: "إعطاء إحساس روحاني فاخر عند بداية التطبيق"
/// Gradient Emerald/Gold, fade + light sweep, ~2s display.
class SplashScreen extends StatefulWidget {
  final VoidCallback onFinished;
  const SplashScreen({super.key, required this.onFinished});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fade;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _controller.forward();

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) widget.onFinished();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const _MosaicBg(col: 1, row: 0, opacity: 0.5),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.primaryEmerald.withValues(alpha: 0.35),
                  AppColors.darkBackground.withValues(alpha: 0.55),
                ],
              ),
            ),
          ),
          Center(
          child: FadeTransition(
            opacity: _fade,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 96,
                  height: 96,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withValues(alpha: 0.08),
                    border: Border.all(color: AppColors.goldAccent, width: 2),
                  ),
                  child: Icon(Icons.spa_outlined,
                      color: AppColors.goldAccent, size: 44),
                ),
                const SizedBox(height: 24),
                Text(
                  l10n.appTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.aboutTagline,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.85),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          ),
        ],
      ),
    );
  }
}

class _MosaicBg extends StatelessWidget {
  final int col; // 0-indexed, 0..4
  final int row; // 0-indexed, 0..1
  final double opacity;
  const _MosaicBg({required this.col, required this.row, this.opacity = 0.4});

  @override
  Widget build(BuildContext context) {
    const cols = 5;
    const rows = 2;
    final alignX = (2 * col / (cols - 1)) - 1;
    final alignY = (2 * row / (rows - 1)) - 1;
    return ClipRect(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment(alignX, alignY),
            child: FractionallySizedBox(
              widthFactor: cols.toDouble(),
              heightFactor: rows.toDouble(),
              child: Image.asset('assets/images/wirdi_mosaic.png', fit: BoxFit.cover),
            ),
          ),
          Container(color: Colors.black.withValues(alpha: opacity)),
        ],
      ),
    );
  }
}
