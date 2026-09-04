import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

class QuranicWord {
  final String arabic;
  final String transliteration;
  final String meaningAr;
  final String meaningEn;
  final String noteAr;
  final String noteEn;

  const QuranicWord({
    required this.arabic,
    required this.transliteration,
    required this.meaningAr,
    required this.meaningEn,
    required this.noteAr,
    required this.noteEn,
  });
}

final List<Map<String, Object>> quranicArabicLessons = [
  {
    'titleAr': 'كلمات سورة الفاتحة',
    'titleEn': 'Words from Al-Fatiha',
    'words': [
      QuranicWord(arabic: 'الله', transliteration: 'Allah', meaningAr: 'اسم الله الجامع', meaningEn: 'The proper name of God', noteAr: 'أكثر الكلمات ورودًا في القرآن', noteEn: 'The most frequently occurring word in the Quran'),
      QuranicWord(arabic: 'رَبّ', transliteration: 'Rabb', meaningAr: 'المالك المربّي المدبّر', meaningEn: 'Lord, Sustainer, Nurturer', noteAr: 'يفيد معنى التربية والرعاية المستمرة', noteEn: 'Implies ongoing care, nurturing, and sovereignty'),
      QuranicWord(arabic: 'العَالَمِين', transliteration: "al-'Alameen", meaningAr: 'كل ما سوى الله من المخلوقات', meaningEn: 'All the worlds / all of creation', noteAr: 'جمع عالَم', noteEn: 'Plural of world/realm'),
      QuranicWord(arabic: 'الرَّحْمَٰن', transliteration: 'Ar-Rahman', meaningAr: 'واسع الرحمة بجميع الخلق', meaningEn: 'The Most Merciful (to all creation)', noteAr: 'من أسماء الله الحسنى', noteEn: 'One of the 99 Names of Allah'),
      QuranicWord(arabic: 'الدِّين', transliteration: 'ad-Deen', meaningAr: 'الجزاء والحساب، أو الدين كمنهج حياة', meaningEn: 'Judgment/recompense, or religion as a way of life', noteAr: 'له معنيان بحسب السياق', noteEn: 'Has two related meanings depending on context'),
      QuranicWord(arabic: 'نَعْبُدُ', transliteration: "na'budu", meaningAr: 'نخضع ونتذلل عبادة', meaningEn: 'We worship', noteAr: 'من العبادة، وهي غاية الخلق', noteEn: 'From worship, the purpose of creation'),
      QuranicWord(arabic: 'نَسْتَعِين', transliteration: "nasta'een", meaningAr: 'نطلب العون والمساعدة', meaningEn: 'We seek help', noteAr: 'تقديم العبادة على الاستعانة له دلالة بلاغية', noteEn: 'Worship is mentioned before seeking help, a meaningful rhetorical order'),
      QuranicWord(arabic: 'اهْدِنَا', transliteration: 'ihdina', meaningAr: 'أرشدنا ووفّقنا', meaningEn: 'Guide us', noteAr: 'من الهداية، وهي الدلالة الموصلة للمطلوب', noteEn: 'From guidance, being shown and led to what is sought'),
      QuranicWord(arabic: 'الصِّرَاط', transliteration: 'as-Sirat', meaningAr: 'الطريق الواضح', meaningEn: 'The path', noteAr: 'يوصف بالمستقيم لعدم اعوجاجه', noteEn: 'Described as straight, without deviation'),
    ],
  },
  {
    'titleAr': 'ضمائر وأدوات شائعة',
    'titleEn': 'Common pronouns and particles',
    'words': [
      QuranicWord(arabic: 'هُوَ', transliteration: 'huwa', meaningAr: 'ضمير الغائب المفرد المذكر', meaningEn: 'He / it (masculine)', noteAr: 'يُستخدم أيضًا للإشارة إلى الله كثيرًا', noteEn: 'Often used to refer to Allah'),
      QuranicWord(arabic: 'إِنَّ', transliteration: 'inna', meaningAr: 'أداة توكيد', meaningEn: 'Indeed / verily (emphasis particle)', noteAr: 'تفيد تأكيد الجملة التي تليها', noteEn: 'Emphasizes the sentence that follows'),
      QuranicWord(arabic: 'الَّذِينَ', transliteration: 'alladheena', meaningAr: 'اسم موصول لجمع المذكر', meaningEn: 'Those who (masculine plural)', noteAr: 'من أكثر الكلمات تكرارًا في القرآن', noteEn: 'One of the most frequently repeated words in the Quran'),
      QuranicWord(arabic: 'مِنْ', transliteration: 'min', meaningAr: 'حرف جر يفيد التبعيض أو الابتداء', meaningEn: 'From / of (preposition)', noteAr: 'من أكثر حروف الجر استخدامًا', noteEn: 'One of the most commonly used prepositions'),
      QuranicWord(arabic: 'فِي', transliteration: 'fee', meaningAr: 'حرف جر يفيد الظرفية', meaningEn: 'In (preposition)', noteAr: 'يفيد الظرفية الزمانية أو المكانية', noteEn: 'Indicates location in time or place'),
      QuranicWord(arabic: 'كُلّ', transliteration: 'kull', meaningAr: 'جميع، كل واحد', meaningEn: 'Every / all', noteAr: 'تفيد الشمول والعموم', noteEn: 'Indicates totality/generality'),
    ],
  },
  {
    'titleAr': 'أفعال قرآنية متكررة',
    'titleEn': 'Frequently repeated Quranic verbs',
    'words': [
      QuranicWord(arabic: 'قَالَ', transliteration: 'qala', meaningAr: 'تكلّم، نطق', meaningEn: 'He said', noteAr: 'من أكثر الأفعال ورودًا في قصص القرآن', noteEn: 'One of the most frequent verbs in Quranic narratives'),
      QuranicWord(arabic: 'آمَنُوا', transliteration: 'amanu', meaningAr: 'صدّقوا واطمأنّت قلوبهم', meaningEn: 'They believed', noteAr: 'غالبًا ما تأتي مقترنة بـ الذين', noteEn: 'Frequently paired with alladheena (those who)'),
      QuranicWord(arabic: 'عَمِلُوا', transliteration: "'amilu", meaningAr: 'فعلوا وأدّوا', meaningEn: 'They did / worked', noteAr: 'كثيرًا ما تقترن بـ الصالحات', noteEn: 'Often paired with righteous deeds'),
      QuranicWord(arabic: 'يَعْلَمُ', transliteration: "ya'lamu", meaningAr: 'يعرف علمًا يقينيًا', meaningEn: 'He knows', noteAr: 'من العلم المطلق الذي يوصف به الله', noteEn: "Related to Allah's absolute knowledge"),
      QuranicWord(arabic: 'خَلَقَ', transliteration: 'khalaqa', meaningAr: 'أوجد من عدم', meaningEn: 'He created', noteAr: 'من أوائل الأفعال ورودًا في القرآن', noteEn: 'One of the earliest-revealed verbs in the Quran'),
    ],
  },
];
