

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

  {
    'titleAr': 'كلمات من آية الكرسي',
    'titleEn': 'Words from Ayat al-Kursi',
    'words': [
      QuranicWord(arabic: 'الْحَيُّ', transliteration: 'al-Hayy', meaningAr: 'الدائم الحياة الذي لا يموت', meaningEn: 'The Ever-Living', noteAr: 'من أسماء الله الحسنى، ويقترن غالباً باسم القيوم', noteEn: 'One of the Names of Allah, often paired with al-Qayyum'),
      QuranicWord(arabic: 'الْقَيُّومُ', transliteration: 'al-Qayyum', meaningAr: 'القائم بذاته والمُقيم لغيره', meaningEn: 'The Self-Sustaining, Sustainer of all', noteAr: 'يدل على استقلاله تعالى عن كل شيء وحاجة كل شيء إليه', noteEn: "Indicates Allah's total independence and everything's dependence on Him"),
      QuranicWord(arabic: 'سِنَةٌ', transliteration: 'sinah', meaningAr: 'النعاس الخفيف قبل النوم', meaningEn: 'Drowsiness / slumber', noteAr: 'نُفيت عن الله مع النوم في نفس الآية', noteEn: 'Negated of Allah in the same verse as sleep'),
      QuranicWord(arabic: 'الْكُرْسِيُّ', transliteration: 'al-Kursi', meaningAr: 'موضع القدمين، كناية عن عظمة الملك', meaningEn: "The Footstool, symbolizing Allah's vast dominion", noteAr: 'وسع السماوات والأرض كما ورد في الآية', noteEn: 'Described as encompassing the heavens and earth'),
      QuranicWord(arabic: 'يَؤُودُهُ', transliteration: "ya'ooduhu", meaningAr: 'يُثقله ويُتعبه', meaningEn: 'Burdens or wearies Him', noteAr: 'منفي عن الله، فحفظ الكون لا يُتعبه سبحانه', noteEn: 'Negated of Allah -- sustaining creation does not tire Him'),
      QuranicWord(arabic: 'الْعَلِيُّ', transliteration: "al-'Aliyy", meaningAr: 'المرتفع فوق خلقه بذاته وقدره', meaningEn: 'The Most High', noteAr: 'من أسماء الله الحسنى', noteEn: 'One of the Names of Allah'),
      QuranicWord(arabic: 'الْعَظِيمُ', transliteration: "al-'Adheem", meaningAr: 'العظيم في ذاته وصفاته', meaningEn: 'The Most Great', noteAr: 'ختمت به آية الكرسي', noteEn: 'The final Name in Ayat al-Kursi'),
    ],
  },
  {
    'titleAr': 'أسماء وصفات شائعة',
    'titleEn': 'Common Quranic nouns and attributes',
    'words': [
      QuranicWord(arabic: 'الْغَفُورُ', transliteration: 'al-Ghafoor', meaningAr: 'كثير المغفرة والستر للذنوب', meaningEn: 'The Most Forgiving', noteAr: 'من أكثر أسماء الله ذكراً في القرآن', noteEn: "One of Allah's most frequently mentioned Names"),
      QuranicWord(arabic: 'الرَّحِيمُ', transliteration: 'ar-Raheem', meaningAr: 'واسع الرحمة بالمؤمنين خاصة', meaningEn: 'The Especially Merciful (to believers)', noteAr: 'يقترن غالباً باسم الغفور', noteEn: 'Often paired with al-Ghafoor'),
      QuranicWord(arabic: 'الْعَزِيزُ', transliteration: "al-'Azeez", meaningAr: 'الغالب القوي الذي لا يُقهر', meaningEn: 'The Almighty', noteAr: 'يقترن كثيراً باسم الحكيم', noteEn: 'Often paired with al-Hakeem'),
      QuranicWord(arabic: 'الْحَكِيمُ', transliteration: 'al-Hakeem', meaningAr: 'صاحب الحكمة البالغة في كل أمر', meaningEn: 'The All-Wise', noteAr: 'يشير إلى إتقان خلق الله وتدبيره', noteEn: "Points to Allah's perfect wisdom in creation and decree"),
      QuranicWord(arabic: 'السَّمِيعُ', transliteration: 'as-Samee', meaningAr: 'الذي يسمع كل شيء', meaningEn: 'The All-Hearing', noteAr: 'يقترن غالباً باسم البصير', noteEn: 'Often paired with al-Baseer'),
      QuranicWord(arabic: 'الْبَصِيرُ', transliteration: 'al-Baseer', meaningAr: 'الذي يرى كل شيء', meaningEn: 'The All-Seeing', noteAr: 'يدل على إحاطة علم الله بكل تفصيل', noteEn: "Indicates Allah's complete awareness of every detail"),
      QuranicWord(arabic: 'كَتَبَ', transliteration: 'kataba', meaningAr: 'فرض وأوجب', meaningEn: 'He decreed / prescribed', noteAr: 'يُستخدم للدلالة على الفرض مثل الصيام', noteEn: 'Used for obligations, such as fasting'),
    ],
  },
  {
    'titleAr': 'كلمات الزمن والمصير',
    'titleEn': 'Words about time and the hereafter',
    'words': [
      QuranicWord(arabic: 'الْآخِرَةُ', transliteration: "al-Akhirah", meaningAr: 'الحياة بعد الموت والبعث', meaningEn: 'The Hereafter', noteAr: 'تقابل الدنيا في القرآن كثيراً', noteEn: 'Frequently contrasted with ad-Dunya (this worldly life)'),
      QuranicWord(arabic: 'السَّاعَةُ', transliteration: "as-Sa'ah", meaningAr: 'يوم القيامة', meaningEn: 'The Hour (Day of Judgment)', noteAr: 'وُصفت بأنها قريبة وآتية لا ريب فيها', noteEn: 'Described as imminent and certain to come'),
      QuranicWord(arabic: 'يَوْمَئِذٍ', transliteration: "yawma'idhin", meaningAr: 'في ذلك اليوم', meaningEn: 'On that day', noteAr: 'يتكرر كثيراً في وصف أهوال القيامة', noteEn: 'Frequently used describing the events of the Day of Judgment'),
      QuranicWord(arabic: 'الْجَنَّةُ', transliteration: 'al-Jannah', meaningAr: 'دار النعيم الأبدي للمؤمنين', meaningEn: 'Paradise', noteAr: 'سُميت جنة لكثافة أشجارها المُظِلّة', noteEn: 'Named for its dense, shading trees'),
      QuranicWord(arabic: 'النَّارُ', transliteration: 'an-Naar', meaningAr: 'دار العذاب للكافرين', meaningEn: 'The Fire (Hell)', noteAr: 'يقابلها ذكر الجنة في آيات كثيرة', noteEn: 'Frequently contrasted with Paradise'),
      QuranicWord(arabic: 'خَالِدِينَ', transliteration: 'khalideen', meaningAr: 'باقين إلى الأبد', meaningEn: 'Abiding forever', noteAr: 'تصف دوام النعيم أو العذاب', noteEn: 'Describes the permanence of reward or punishment'),
    ],
  },
];
