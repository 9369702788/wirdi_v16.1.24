import 'dart:math';

import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

class _Q {
  final String ar; final String en; final List<String> arOptions; final List<String> enOptions; final int correctIndex;
  const _Q({required this.ar, required this.en, required this.arOptions, required this.enOptions, required this.correctIndex});
}

const List<_Q> _bank = [
  _Q(ar: 'في أي سنة هجرية كانت غزوة بدر؟', en: 'In which Hijri year was the Battle of Badr?', arOptions: ['السنة الأولى', 'السنة الثانية', 'السنة الثالثة', 'السنة الخامسة'], enOptions: ['Year 1 AH', 'Year 2 AH', 'Year 3 AH', 'Year 5 AH'], correctIndex: 1),
  _Q(ar: 'متى كانت الهجرة النبوية من مكة إلى المدينة؟', en: 'When did the Hijrah take place?', arOptions: ['622 ميلادية', '610 ميلادية', '632 ميلادية', '570 ميلادية'], enOptions: ['622 CE', '610 CE', '632 CE', '570 CE'], correctIndex: 0),
  _Q(ar: 'ما هي أول غزوة كبرى خاضها المسلمون؟', en: 'What was the first major battle fought by the Muslims?', arOptions: ['غزوة أحد', 'غزوة بدر', 'غزوة الخندق', 'غزوة حنين'], enOptions: ['Battle of Uhud', 'Battle of Badr', 'Battle of the Trench', 'Battle of Hunayn'], correctIndex: 1),
  _Q(ar: 'في أي عام هجري كان فتح مكة؟', en: 'In which Hijri year was the conquest of Makkah?', arOptions: ['السنة الثامنة', 'السنة الأولى', 'السنة العاشرة', 'السنة الخامسة'], enOptions: ['8 AH', '1 AH', '10 AH', '5 AH'], correctIndex: 0),
  _Q(ar: 'من هو أول الخلفاء الراشدين؟', en: 'Who was the first of the Rightly Guided Caliphs?', arOptions: ['عمر بن الخطاب', 'أبو بكر الصديق رضي الله عنه', 'عثمان بن عفان', 'علي بن أبي طالب'], enOptions: ['Umar ibn al-Khattab', 'Abu Bakr al-Siddiq', 'Uthman ibn Affan', 'Ali ibn Abi Talib'], correctIndex: 1),
  _Q(ar: 'كم استمرت مرحلة الدعوة السرية في مكة تقريبًا؟', en: 'About how long was the secret phase of the call to Islam in Makkah?', arOptions: ['ثلاث سنوات', 'سنة واحدة', 'عشر سنوات', 'ستة أشهر'], enOptions: ['About three years', 'One year', 'Ten years', 'Six months'], correctIndex: 0),
];

class IslamicHistoryQuizScreen extends StatefulWidget {
  const IslamicHistoryQuizScreen({super.key});
  @override
  State<IslamicHistoryQuizScreen> createState() => _IslamicHistoryQuizScreenState();
}

class _IslamicHistoryQuizScreenState extends State<IslamicHistoryQuizScreen> {
  final _random = Random();
  int _score = 0;
  int _attempts = 0;
  late _Q _current;
  int? _selected;

  @override
  void initState() { super.initState(); _current = _bank[_random.nextInt(_bank.length)]; }

  void _choose(int index) { setState(() { _selected = index; _attempts += 1; if (index == _current.correctIndex) _score += 1; }); }

  void _next() { setState(() { _current = _bank[_random.nextInt(_bank.length)]; _selected = null; }); }

  @override
  Widget build(BuildContext context) {
    final isAr = Localizations.localeOf(context).languageCode == 'ar';
    final options = isAr ? _current.arOptions : _current.enOptions;
    return Scaffold(
      appBar: AppBar(title: Text(isAr ? 'اختبار التاريخ الإسلامي' : 'Islamic History Quiz'), centerTitle: true, actions: [
        Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: Center(child: Text("$_score / $_attempts", style: const TextStyle(fontWeight: FontWeight.bold)))),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppColors.goldAccent.withValues(alpha: 0.1), borderRadius: BorderRadius.circular(16), border: Border.all(color: AppColors.goldAccent.withValues(alpha: 0.3))),
            child: Text(isAr ? _current.ar : _current.en, textAlign: TextAlign.center, textDirection: isAr ? TextDirection.rtl : TextDirection.ltr, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 20),
          ...List.generate(options.length, (i) {
            final isCorrect = i == _current.correctIndex;
            final isPicked = i == _selected;
            Color? bg;
            if (_selected != null) {
              if (isCorrect) bg = AppColors.primaryEmerald.withValues(alpha: 0.15);
              else if (isPicked) bg = Colors.red.withValues(alpha: 0.1);
            }
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(backgroundColor: bg),
                onPressed: _selected == null ? () => _choose(i) : null,
                child: Text(options[i], textDirection: isAr ? TextDirection.rtl : TextDirection.ltr),
              ),
            );
          }),
          if (_selected != null) ...[
            const SizedBox(height: 12),
            FilledButton(onPressed: _next, child: Text(isAr ? 'التالي' : 'Next')),
          ],
        ]),
      ),
    );
  }
}
