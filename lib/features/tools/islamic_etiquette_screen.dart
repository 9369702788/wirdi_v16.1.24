import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

class IslamicEtiquetteScreen extends StatelessWidget {
  const IslamicEtiquetteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isAr = Localizations.localeOf(context).languageCode == 'ar';
    return Scaffold(
      appBar: AppBar(title: Text(isAr ? 'آداب إسلامية عامة' : 'Islamic Etiquette (Adab)'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(isAr ? 'آداب الطعام' : 'Eating etiquette', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 6),
                  Text(
                    isAr ? 'التسمية قبل الأكل، الأكل باليد اليمنى، الأكل مما يلي الآكل، وحمد الله بعد الانتهاء.' : 'Say Bismillah before eating, eat with the right hand, eat from what is nearest to you, and praise Allah after finishing.',
                    style: const TextStyle(fontSize: 13, height: 1.7),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(isAr ? 'آداب النوم' : 'Sleeping etiquette', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 6),
                  Text(
                    isAr ? 'النوم على الشق الأيمن، قراءة آية الكرسي والمعوذات قبل النوم، ونفض الفراش قبل الاضطجاع.' : 'Sleep on the right side, recite Ayat al-Kursi and the last verses of protection before sleeping, and dust off the bed before lying down.',
                    style: const TextStyle(fontSize: 13, height: 1.7),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(isAr ? 'آداب السلام' : 'Etiquette of greeting', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 6),
                  Text(
                    isAr ? 'يبدأ الراكب الماشي بالسلام، والماشي الجالس، والصغير الكبير، والقليل الكثير.' : 'The rider greets the walker first, the walker greets the one sitting, the young greet the elder, and the smaller group greets the larger group.',
                    style: const TextStyle(fontSize: 13, height: 1.7),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(isAr ? 'آداب العطاس' : 'Etiquette of sneezing', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 6),
                  Text(
                    isAr ? 'يقول العاطس: الحمد لله، ويرد عليه من سمعه: يرحمك الله، فيقول العاطس: يهديكم الله ويصلح بالكم.' : "The sneezer says 'Alhamdulillah', those who hear reply 'Yarhamuk Allah' (may Allah have mercy on you), and the sneezer responds 'Yahdikum Allah wa yuslihu balakum'.",
                    style: const TextStyle(fontSize: 13, height: 1.7),
                  ),
                ],
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(isAr ? 'آداب زيارة المريض' : 'Etiquette of visiting the sick', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 6),
                  Text(
                    isAr ? 'يُستحب تخفيف الزيارة، والدعاء للمريض بالشفاء، وتطييب خاطره.' : "It is recommended to keep the visit brief, supplicate for the sick person's healing, and offer words of comfort.",
                    style: const TextStyle(fontSize: 13, height: 1.7),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
