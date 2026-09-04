import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/theme/app_theme.dart';

class CongregationTrackerScreen extends StatefulWidget {
  const CongregationTrackerScreen({super.key});

  @override
  State<CongregationTrackerScreen> createState() => _CongregationTrackerScreenState();
}

class _CongregationTrackerScreenState extends State<CongregationTrackerScreen> {
  static const _prayerNames = ['Fajr', 'Dhuhr', 'Asr', 'Maghrib', 'Isha'];
  static const _lifetimeKey = 'congregation_lifetime_total';
  Map<String, bool> _today = {};
  int _lifetimeTotal = 0;
  bool _loading = true;

  String _todayKey() {
    final now = DateTime.now();
    return '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
  }

  String _prefKey(String prayer) => 'congregation_${prayer}_${_todayKey()}';

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final map = {for (final name in _prayerNames) name: prefs.getBool(_prefKey(name)) ?? false};
    if (!mounted) return;
    setState(() {
      _today = map;
      _lifetimeTotal = prefs.getInt(_lifetimeKey) ?? 0;
      _loading = false;
    });
  }

  Future<void> _toggle(String prayer, bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_prefKey(prayer), value);
    final delta = value ? 1 : -1;
    final newTotal = (_lifetimeTotal + delta).clamp(0, 1 << 30);
    await prefs.setInt(_lifetimeKey, newTotal);
    if (!mounted) return;
    setState(() {
      _today[prayer] = value;
      _lifetimeTotal = newTotal;
    });
  }

  String _arabicName(String name, bool isAr) {
    if (!isAr) return name;
    switch (name) {
      case 'Fajr':
        return 'الفجر';
      case 'Dhuhr':
        return 'الظهر';
      case 'Asr':
        return 'العصر';
      case 'Maghrib':
        return 'المغرب';
      case 'Isha':
        return 'العشاء';
      default:
        return name;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isAr = Localizations.localeOf(context).languageCode == 'ar';
    final todayCount = _today.values.where((v) => v).length;
    return Scaffold(
      appBar: AppBar(title: Text(isAr ? 'صلاة الجماعة' : 'Congregation Prayer'), centerTitle: true),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Card(
                  color: AppColors.primaryEmerald.withValues(alpha: 0.08),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text('$todayCount/5', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppColors.primaryEmerald)),
                            Text(isAr ? 'اليوم' : 'Today', style: const TextStyle(fontSize: 12, color: AppColors.mutedText)),
                          ],
                        ),
                        Column(
                          children: [
                            Text('$_lifetimeTotal', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppColors.primaryEmerald)),
                            Text(isAr ? 'الإجمالي مدى الحياة' : 'Lifetime total', style: const TextStyle(fontSize: 12, color: AppColors.mutedText)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ..._prayerNames.map((name) => Card(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: CheckboxListTile(
                        title: Text(_arabicName(name, isAr), textDirection: isAr ? TextDirection.rtl : TextDirection.ltr),
                        value: _today[name] ?? false,
                        activeColor: AppColors.primaryEmerald,
                        onChanged: (v) => _toggle(name, v ?? false),
                      ),
                    )),
              ],
            ),
    );
  }
}
