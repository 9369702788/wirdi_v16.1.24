import 'package:flutter/material.dart';
import '../../core/services/moon_phases_service.dart';
import '../../core/services/moon_sighting_service.dart';
import '../../core/theme/app_theme.dart';

class MoonScreen extends StatefulWidget {
  const MoonScreen({super.key});
  @override
  State<MoonScreen> createState() => _MoonScreenState();
}

class _MoonScreenState extends State<MoonScreen> {
  MoonSightingInfo? _sighting;
  List<MoonPhase> _monthPhases = [];
  bool _loading = true;

  @override
  void initState() { super.initState(); _load(); }

  Future<void> _load() async {
    final now = DateTime.now();
    final sighting = await MoonSightingService.getMoonSightingInfo();
    final phases = await MoonPhasesService.getMoonPhasesForMonth(now.month, now.year);
    if (!mounted) return;
    setState(() { _sighting = sighting; _monthPhases = phases; _loading = false; });
  }

  @override
  Widget build(BuildContext context) {
    final isAr = Localizations.localeOf(context).languageCode == 'ar';
    final sighting = _sighting;
    return Scaffold(
      appBar: AppBar(title: Text(isAr ? 'القمر وطوره' : 'Moon Phase'), centerTitle: true),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [AppColors.primaryEmerald, const Color(0xFF115E56)]), borderRadius: BorderRadius.circular(16)),
                  child: Column(children: [
                    Text(isAr ? 'طور القمر اليوم' : "Today's Moon Phase", style: const TextStyle(color: Colors.white70, fontSize: 12)),
                    const SizedBox(height: 8),
                    Text(sighting?.description ?? '', textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontSize: 15)),
                  ]),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(color: AppColors.goldAccent.withValues(alpha: 0.1), borderRadius: BorderRadius.circular(14)),
                  child: Text(
                    isAr ? 'ملاحظة: ده تقدير فلكي حسابي فقط، مش إعلان رسمي من لجنة رؤية الهلال.' : 'Note: this is a calculated astronomical estimate only, not an official moon-sighting committee announcement.',
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
                const SizedBox(height: 20),
                Text(isAr ? 'أطوار القمر هذا الشهر' : 'Moon Phases This Month', style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
                const SizedBox(height: 10),
                for (final p in _monthPhases)
                  if (p.date.endsWith('-01') || p.date.endsWith('-08') || p.date.endsWith('-15') || p.date.endsWith('-22') || p.date.endsWith('-29'))
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(Icons.brightness_2_outlined, color: AppColors.primaryEmerald),
                      title: Text(p.date),
                      subtitle: Text('${p.phase} -- ${(p.illumination * 100).round()}%'),
                    ),
              ],
            ),
    );
  }
}
