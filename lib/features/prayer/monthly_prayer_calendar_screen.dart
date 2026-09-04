import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../core/data/app_sources.dart';
import '../../core/services/settings_service.dart';

class MonthlyPrayerCalendarScreen extends StatefulWidget {
  const MonthlyPrayerCalendarScreen({super.key});
  @override
  State<MonthlyPrayerCalendarScreen> createState() => _MonthlyPrayerCalendarScreenState();
}

class _MonthlyPrayerCalendarScreenState extends State<MonthlyPrayerCalendarScreen> {
  List<Map<String, dynamic>>? _days;
  bool _loading = true;
  String? _error;
  @override
  void initState() { super.initState(); _load(); }
  Future<void> _load() async {
    try {
      final serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) throw Exception('Location service disabled');
      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever || permission == LocationPermission.denied) {
        throw Exception('Location permission denied');
      }
      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
      ).timeout(const Duration(seconds: 15));
      final now = DateTime.now();
      final url = AppSources.prayerCalendarUrl(latitude: position.latitude, longitude: position.longitude, month: now.month, year: now.year, method: appSettings.prayerCalcMethod);
      final response = await http.get(Uri.parse(url)).timeout(const Duration(seconds: 20));
      if (response.statusCode != 200) throw Exception('HTTP ${response.statusCode}');
      final decoded = jsonDecode(utf8.decode(response.bodyBytes));
      final data = decoded['data'] as List<dynamic>;
      final days = data.map((d) {
        final timings = d['timings'] as Map<String, dynamic>;
        final dateInfo = d['date'] as Map<String, dynamic>;
        String clean(String key) => (timings[key] as String).split(' ').first;
        return {
          'day': (dateInfo['gregorian'] as Map<String, dynamic>)['day'],
          'fajr': clean('Fajr'),
          'dhuhr': clean('Dhuhr'),
          'asr': clean('Asr'),
          'maghrib': clean('Maghrib'),
          'isha': clean('Isha'),
        };
      }).toList();
      if (!mounted) return;
      setState(() { _days = days; _loading = false; });
    } catch (e) {
      if (!mounted) return;
      setState(() { _error = e.toString(); _loading = false; });
    }
  }
  @override
  Widget build(BuildContext context) {
    final isAr = Localizations.localeOf(context).languageCode == 'ar';
    return Scaffold(
      appBar: AppBar(title: Text(isAr ? 'جدول الشهر لمواقيت الصلاة' : 'Monthly Prayer Times Table'), centerTitle: true),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _error != null
              ? Center(child: Padding(padding: const EdgeInsets.all(24), child: Text(_error!, textAlign: TextAlign.center)))
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text(isAr ? 'اليوم' : 'Day')),
                      const DataColumn(label: Text('Fajr')),
                      const DataColumn(label: Text('Dhuhr')),
                      const DataColumn(label: Text('Asr')),
                      const DataColumn(label: Text('Maghrib')),
                      const DataColumn(label: Text('Isha')),
                    ],
                    rows: (_days ?? []).map((d) => DataRow(cells: [
                          DataCell(Text('${d['day']}')),
                          DataCell(Text('${d['fajr']}')),
                          DataCell(Text('${d['dhuhr']}')),
                          DataCell(Text('${d['asr']}')),
                          DataCell(Text('${d['maghrib']}')),
                          DataCell(Text('${d['isha']}')),
                        ])).toList(),
                  ),
                ),
    );
  }
}
