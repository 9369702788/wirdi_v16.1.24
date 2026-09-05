import 'dart:math';

import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

class _Q {
  final String ar; final String en; final List<String> arOptions; final List<String> enOptions; final int correctIndex;
  const _Q({required this.ar, required this.en, required this.arOptions, required this.enOptions, required this.correctIndex});
}

const List<_Q> _bank = [
  _Q(ar: 'من هو الصحابي الملقب بالصديق؟', en: 'Which companion is known as "Al-Siddiq" (The Truthful)?', arOptions: ['أبو بكر رضي الله عنه', 'عمر بن الخطاب', 'عثمان بن عفان', 'علي بن أبي طالب'], enOptions: ['Abu Bakr', 'Umar ibn al-Khattab', 'Uthman ibn Affan', 'Ali ibn Abi Talib'], correctIndex: 0),
  _Q(ar: 'من هو الصحابي الملقب بالفاروق؟', en: 'Which companion is known as "Al-Farooq"?', arOptions: ['أبو بكر رضي الله عنه', 'عمر بن الخطاب رضي الله عنه', 'خالد بن الوليد', 'أبو عبيدة بن الجراح'], enOptions: ['Abu Bakr', 'Umar ibn al-Khattab', 'Khalid ibn al-Walid', 'Abu Ubaidah ibn al-Jarrah'], correctIndex: 1),
  _Q(ar: 'من هو الصحابي الملقب بسيف الله المسلول؟', en: 'Which companion is called "The Drawn Sword of Allah"?', arOptions: ['سعد بن أبي وقاص', 'خالد بن الوليد رضي الله عنه', 'الزبير بن العوام', 'طلحة بن عبيد الله'], enOptions: ['Saad ibn Abi Waqqas', 'Khalid ibn al-Walid', 'Al-Zubayr ibn al-Awwam', 'Talha ibn Ubaydillah'], correctIndex: 1),
  _Q(ar: 'من هي أول امرأة أسلمت؟', en: 'Who was the first woman to accept Islam?', arOptions: ['عائشة رضي الله عنها', 'فاطمة بنت محمد', 'خديجة بنت خويلد رضي الله عنها', 'أم سلمة'], enOptions: ['Aisha', 'Fatimah bint Muhammad', 'Khadijah bint Khuwaylid', 'Umm Salamah'], correctIndex: 2),
  _Q(ar: 'من هو مؤذن النبي صلى الله عليه وسلم؟', en: "Who was the Prophet's muezzin?", arOptions: ['بلال بن رباح رضي الله عنه', 'عبد الله بن مسعود', 'أبو هريرة', 'معاذ بن جبل'], enOptions: ['Bilal ibn Rabah', 'Abdullah ibn Masud', 'Abu Hurayrah', "Mu'adh ibn Jabal"], correctIndex: 0),
  _Q(ar: 'في عهد أي خليفة جُمع القرآن أول مرة في مصحف واحد؟', en: "During which caliph's era was the Quran first compiled into one copy?", arOptions: ['أبو بكر الصديق رضي الله عنه', 'عمر بن الخطاب', 'عثمان بن عفان', 'علي بن أبي طالب'], enOptions: ['Abu Bakr al-Siddiq', 'Umar ibn al-Khattab', 'Uthman ibn Affan', 'Ali ibn Abi Talib'], correctIndex: 0),
];

class SahabaQuizScreen extends StatefulWidget {
  const SahabaQuizScreen({super.key});
  @override
  State<SahabaQuizScreen> createState() => _SahabaQuizScreenState();
}

class _SahabaQuizScreenState extends State<SahabaQuizScreen> {
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
      appBar: AppBar(title: Text(isAr ? 'اختبار عن الصحابة' : 'Sahaba (Companions) Quiz'), centerTitle: true, actions: [
        Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: Center(child: Text("$_score / $_attempts", style: const TextStyle(fontWeight: FontWeight.bold)))),
      ]),
      body: SafeArea(child: Padding(
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
              if (isCorrect) {
                bg = AppColors.primaryEmerald.withValues(alpha: 0.15);
              } else if (isPicked) {
                bg = Colors.red.withValues(alpha: 0.1);
              }
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
      )),
    );
  }
}
