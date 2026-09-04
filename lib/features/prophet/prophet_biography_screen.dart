import 'package:flutter/material.dart';

import '../../core/services/prophet_biography.dart';
import '../../core/theme/app_theme.dart';

class ProphetBiographyScreen extends StatelessWidget {
  const ProphetBiographyScreen({super.key});

  static const Map<String, List<String>> _labels = {
    'birth': ['الميلاد', 'Birth'],
    'revelation': ['بدء الوحي', 'First Revelation'],
    'hijra': ['الهجرة', 'The Hijra'],
    'badr': ['غزوة بدر', 'Battle of Badr'],
    'uhud': ['غزوة أحد', 'Battle of Uhud'],
    'khandaq': ['غزوة الخندق', 'Battle of the Trench'],
    'hudaybiyyah': ['صلح الحديبية', 'Treaty of Hudaybiyyah'],
    'fatah_mecca': ['فتح مكة', 'Conquest of Mecca'],
    'farewell': ['حجة الوداع', 'Farewell Pilgrimage'],
  };

  @override
  Widget build(BuildContext context) {
    final isAr = Localizations.localeOf(context).languageCode == 'ar';
    final entries = ProphetBiography.prophetLife.entries.toList()
      ..sort((a, b) {
        final av = a.value as Map<String, dynamic>;
        final bv = b.value as Map<String, dynamic>;
        return (av['year'] as int).compareTo(bv['year'] as int);
      });
    return Scaffold(
      appBar: AppBar(title: Text(isAr ? 'سيرة النبي صلى الله عليه وسلم' : "Prophet's Biography"), centerTitle: true),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: entries.length,
        separatorBuilder: (_, __) => const Divider(height: 24),
        itemBuilder: (context, index) {
          final entry = entries[index];
          final data = entry.value as Map<String, dynamic>;
          final label = _labels[entry.key];
          final title = label == null ? entry.key : (isAr ? label[0] : label[1]);
          final year = data['year'] as int;
          final parts = <String>[
            if (data['location'] != null) '${data['location']}',
            if (data['age'] != null) (isAr ? 'العمر: ${data['age']}' : 'Age: ${data['age']}'),
          ];
          final extra = parts.join('  \u2022  ');
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: AppColors.primaryEmerald.withValues(alpha: 0.1),
              child: Text('$year', style: TextStyle(fontSize: 11, color: AppColors.primaryEmerald)),
            ),
            title: Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
            subtitle: extra.isEmpty ? null : Text(extra, style: const TextStyle(fontSize: 12, color: AppColors.mutedText)),
          );
        },
      ),
    );
  }
}
