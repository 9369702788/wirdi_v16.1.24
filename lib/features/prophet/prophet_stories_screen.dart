import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

class ProphetStoriesScreen extends StatelessWidget {
  const ProphetStoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isAr = Localizations.localeOf(context).languageCode == 'ar';
    return Scaffold(
      appBar: AppBar(title: Text(isAr ? 'قصص الأنبياء' : 'Stories of the Prophets'), centerTitle: true),
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
                  Text(isAr ? 'آدم عليه السلام' : 'Adam (peace be upon him)', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 6),
                  Text(
                    isAr ? 'أبو البشر، خلقه الله بيده ونفخ فيه من روحه، وعلّمه الأسماء كلها، وأسكنه الجنة ثم أُهبط إلى الأرض بعد أكله من الشجرة، وتاب الله عليه.' : "The father of humanity, created by Allah's hand and given a soul, taught all names, placed in Paradise, then sent to earth after eating from the forbidden tree -- Allah accepted his repentance.",
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
                  Text(isAr ? 'نوح عليه السلام' : 'Nuh / Noah (peace be upon him)', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 6),
                  Text(
                    isAr ? 'دعا قومه إلى التوحيد 950 عامًا، وبنى السفينة بأمر الله لينجو المؤمنون معه من الطوفان الذي أغرق قومه المكذّبين.' : "He called his people to monotheism for 950 years, and built the Ark by Allah's command so the believers would survive the flood that drowned his disbelieving people.",
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
                  Text(isAr ? 'إبراهيم عليه السلام' : 'Ibrahim / Abraham (peace be upon him)', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 6),
                  Text(
                    isAr ? 'خليل الله، كسّر الأصنام وحاجّ قومه بالحجة، أُلقي في النار فجعلها الله بردًا وسلامًا عليه، وبنى الكعبة مع ابنه إسماعيل.' : 'The close friend of Allah, he broke idols and argued against his people with clear proof, was thrown into fire which Allah made cool and safe for him, and built the Kaaba with his son Ismail.',
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
                  Text(isAr ? 'موسى عليه السلام' : 'Musa / Moses (peace be upon him)', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 6),
                  Text(
                    isAr ? 'أرسله الله إلى فرعون، وأعطاه معجزة العصا واليد البيضاء، وأنزل عليه التوراة، ونجّى بني إسرائيل بشق البحر.' : 'Sent by Allah to Pharaoh, given the miracles of the staff and the radiant hand, given the Torah, and he saved the Children of Israel by parting the sea.',
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
                  Text(isAr ? 'يونس عليه السلام' : 'Yunus / Jonah (peace be upon him)', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 6),
                  Text(
                    isAr ? 'غادر قومه مغاضبًا فابتلعه الحوت، فدعا الله في بطنه، فنجّاه الله ورد قومه إلى الإيمان.' : 'He left his people in frustration and was swallowed by a great fish; in its belly he called upon Allah, and Allah saved him -- his people later returned to faith.',
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
                  Text(isAr ? 'عيسى عليه السلام' : 'Isa / Jesus (peace be upon him)', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  const SizedBox(height: 6),
                  Text(
                    isAr ? 'وُلد بلا أب بمعجزة من الله، وأُعطي إحياء الموتى وإبراء الأكمه والأبرص بإذن الله، وأُنزل عليه الإنجيل، ورفعه الله إليه.' : "Born without a father by Allah's miracle, given the ability to heal the blind and leprous and revive the dead by Allah's permission, given the Gospel, and raised by Allah to Him.",
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
