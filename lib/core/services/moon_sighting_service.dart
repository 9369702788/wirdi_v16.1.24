import 'moon_calculator.dart';

class MoonSightingInfo {
  final String date;
  final String hijriMonth;
  final String visibility;
  final String location;
  final String description;
  const MoonSightingInfo({required this.date, required this.hijriMonth, required this.visibility, required this.location, required this.description});
}

class MoonSightingService {
  static Future<MoonSightingInfo> getMoonSightingInfo() async {
    final now = DateTime.now();
    final age = MoonCalculator.moonAgeDays(now);
    final illumination = MoonCalculator.illuminationFraction(age);
    final phase = MoonCalculator.phaseName(age);
    final nearNewCrescent = age < 2.0 || age > MoonCalculator.synodicMonthDays - 2.0;
    return MoonSightingInfo(
      date: '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}',
      hijriMonth: '',
      visibility: nearNewCrescent ? 'Young crescent may be observable near sunset (astronomical estimate only)' : 'Not in the new-crescent window',
      location: '',
      description: 'Moon age: ${age.toStringAsFixed(1)} days -- $phase (${(illumination * 100).round()}% illuminated). This is a calculated estimate, not a moon-sighting committee announcement.',
    );
  }
}
