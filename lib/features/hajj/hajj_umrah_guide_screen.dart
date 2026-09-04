import 'package:flutter/material.dart';

import '../../core/services/hajj_umrah_guide.dart';
import '../../core/theme/app_theme.dart';

class HajjUmrahGuideScreen extends StatelessWidget {
  const HajjUmrahGuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isAr = Localizations.localeOf(context).languageCode == 'ar';
    final steps = HajjUmrahGuide.hajjSteps.entries.toList()
      ..sort((a, b) {
        final av = a.value as Map<String, dynamic>;
        final bv = b.value as Map<String, dynamic>;
        return (av['step'] as int).compareTo(bv['step'] as int);
      });
    return Scaffold(
      appBar: AppBar(
        title: Text(isAr ? 'دليل الحج والعمرة' : 'Hajj & Umrah Guide'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: steps.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final entry = steps[index];
          final data = entry.value as Map<String, dynamic>;
          final duas = (data['duas'] as List<dynamic>?)?.cast<String>() ?? const <String>[];
          final name = entry.key.isEmpty ? entry.key : (entry.key[0].toUpperCase() + entry.key.substring(1));
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.primaryEmerald.withValues(alpha: 0.1),
                    child: Text(
                      '${data['step']}',
                      style: TextStyle(color: AppColors.primaryEmerald, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                        const SizedBox(height: 4),
                        Text('${data['description']}', style: const TextStyle(fontSize: 13)),
                        if (duas.isNotEmpty) ...[
                          const SizedBox(height: 8),
                          for (final d in duas)
                            Text(
                              d,
                              style: const TextStyle(fontSize: 12, fontStyle: FontStyle.italic, color: AppColors.mutedText),
                            ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
