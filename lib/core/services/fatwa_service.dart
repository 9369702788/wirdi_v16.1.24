class FatwaRuling {
  final String question;
  final String answer;
  final String scholar;
  final String source;
  final String category;
  const FatwaRuling({required this.question, required this.answer, required this.scholar, required this.source, required this.category});
}

class FatwaService {
  static const List<FatwaRuling> _rulings = [
    FatwaRuling(category: 'Prayer', question: 'Can a traveler shorten (Qasr) their prayers?', answer: 'Yes. It is an established Sunnah for a traveler undertaking a journey of a recognized distance to shorten the 4-rak ah prayers to 2 rak ahs each.', scholar: 'General consensus', source: 'Mainstream Fiqh reference'),
    FatwaRuling(category: 'Prayer', question: 'Can a traveler combine two prayers (Jam)?', answer: 'Yes. Combining Dhuhr with Asr, and Maghrib with Isha, is permitted while traveling for ease during the journey.', scholar: 'General consensus', source: 'Mainstream Fiqh reference'),
    FatwaRuling(category: 'Prayer', question: 'I woke up after a prayer time had passed. What should I do?', answer: 'Pray it as soon as you wake up or remember -- there is no sin for an unintentional delay caused by sleep or forgetfulness.', scholar: 'General consensus', source: 'Mainstream Fiqh reference'),
    FatwaRuling(category: 'Fasting', question: 'I ate or drank by mistake while fasting -- is my fast broken?', answer: 'No, according to the majority view. If you genuinely forgot, your fast remains valid; stop as soon as you remember.', scholar: 'Majority view', source: 'Mainstream Fiqh reference'),
    FatwaRuling(category: 'Zakat', question: 'Is Zakat due on wealth that has not reached the Nisab threshold?', answer: 'No. Zakat only becomes obligatory once your zakatable wealth reaches the Nisab AND remains so for a full lunar year (Hawl).', scholar: 'General consensus', source: 'Mainstream Fiqh reference'),
    FatwaRuling(category: 'Purification', question: 'What are the most commonly agreed things that break Wudu?', answer: 'Using the toilet, passing wind, deep sleep, and the flow of blood or impurities from the body. Some details differ between schools.', scholar: 'Cross-madhhab summary', source: 'Mainstream Fiqh reference'),
  ];

  static Future<List<FatwaRuling>> getFatwaByCategory(String category) async {
    if (category.isEmpty || category == 'All') return _rulings;
    return _rulings.where((r) => r.category == category).toList();
  }

  static Future<List<FatwaRuling>> getAll() async => _rulings;
  static List<String> get categories => _rulings.map((r) => r.category).toSet().toList()..sort();
}
