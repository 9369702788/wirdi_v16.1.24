
class IslamicHistoryEvent {
  final int year;
  final String yearAH;
  final String event;
  final String eventAr;
  final String description;
  final String descriptionAr;

  const IslamicHistoryEvent({
    required this.year, required this.yearAH, required this.event, required this.eventAr,
    required this.description, required this.descriptionAr,
  });
}

class IslamicHistoryService {
  static const List<IslamicHistoryEvent> timeline = [
    IslamicHistoryEvent(year: 610, yearAH: 'Before Hijra', event: 'Beginning of Revelation', eventAr: 'بداية الوحي', description: 'Prophet Muhammad (peace be upon him) receives the first revelation in the cave of Hira', descriptionAr: 'نزول الوحي على النبي محمد صلى الله عليه وسلم لأول مرة في غار حراء'),
    IslamicHistoryEvent(year: 622, yearAH: '1 AH', event: 'The Hijra', eventAr: 'الهجرة النبوية', description: 'Migration of the Prophet and his companions from Mecca to Medina', descriptionAr: 'هجرة النبي صلى الله عليه وسلم وأصحابه من مكة إلى المدينة المنورة'),
    IslamicHistoryEvent(year: 624, yearAH: '2 AH', event: 'Battle of Badr', eventAr: 'غزوة بدر', description: 'The first major battle between the Muslims and the Quraysh of Mecca', descriptionAr: 'أول معركة كبرى بين المسلمين وقريش، وتُعرف بيوم الفرقان'),
    IslamicHistoryEvent(year: 625, yearAH: '3 AH', event: 'Battle of Uhud', eventAr: 'غزوة أُحد', description: 'Second major battle between the Muslims and the Quraysh', descriptionAr: 'المعركة الثانية الكبرى بين المسلمين وقريش عند جبل أُحد'),
    IslamicHistoryEvent(year: 627, yearAH: '5 AH', event: 'Battle of the Trench', eventAr: 'غزوة الخندق', description: 'Siege of Medina by a coalition of Quraysh and allied tribes', descriptionAr: 'حصار المدينة المنورة من قِبل تحالف قريش والأحزاب، وحفر الخندق دفاعًا عنها'),
    IslamicHistoryEvent(year: 628, yearAH: '6 AH', event: 'Treaty of Hudaybiyyah', eventAr: 'صلح الحديبية', description: 'A peace treaty between the Muslims and the Quraysh of Mecca', descriptionAr: 'معاهدة صلح بين المسلمين وقريش مهّدت لفتح مكة لاحقًا'),
    IslamicHistoryEvent(year: 630, yearAH: '8 AH', event: 'Conquest of Mecca', eventAr: 'فتح مكة', description: 'The Muslims peacefully enter and take control of Mecca', descriptionAr: 'دخول المسلمين مكة المكرمة فتحًا بلا قتال يُذكر، وتحطيم الأصنام حول الكعبة'),
    IslamicHistoryEvent(year: 632, yearAH: '10 AH', event: 'The Farewell Pilgrimage', eventAr: 'حجة الوداع', description: 'The last pilgrimage and sermon of Prophet Muhammad (peace be upon him)', descriptionAr: 'آخر حجة أداها النبي صلى الله عليه وسلم، وألقى فيها خطبة الوداع الجامعة'),
  ];

  static List<IslamicHistoryEvent> getTimelineEvents() {
    return timeline;
  }
}
