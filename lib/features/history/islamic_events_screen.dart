import 'package:flutter/material.dart';
import '../../core/services/islamic_events_service.dart';
import '../../core/theme/app_theme.dart';

class IslamicEventsScreen extends StatelessWidget {
  const IslamicEventsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final isAr = Localizations.localeOf(context).languageCode == 'ar';
    final events = IslamicEventsService.events;
    return Scaffold(
      appBar: AppBar(title: Text(isAr ? 'المناسبات الإسلامية' : 'Islamic Events'), centerTitle: true),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: events.length,
        separatorBuilder: (_, __) => const Divider(height: 24),
        itemBuilder: (context, index) {
          final e = events[index];
          return ListTile(
            leading: const Icon(Icons.event_outlined, color: AppColors.primaryEmerald),
            title: Text(isAr ? e.nameAr : e.name, style: const TextStyle(fontWeight: FontWeight.w700)),
            subtitle: Text('${e.hijriDate}\n${e.description}'),
            isThreeLine: true,
          );
        },
      ),
    );
  }
}
