import 'package:flutter/material.dart';
import 'package:learn_python/widgets/app_large_text.dart';
import 'package:learn_python/widgets/app_text.dart';
import 'package:learn_python/widgets/responsive_button.dart';

class FirstLessonPage extends StatefulWidget {
  const FirstLessonPage({Key? key}) : super(key: key);

  @override
  _FirstLessonPageState createState() => _FirstLessonPageState();
}

class _FirstLessonPageState extends State<FirstLessonPage> {
  int gottenStars = 1;
  String lessonsTextP1 = '''
Python - соңғы бірнеше жылдағы ең жылдам дамып келе жатқан бағдарламалау тілі. 2019 жылғы StackOverflow зерттеуі осылай дейді.
Неліктен программисттер оны жақсы көретінін және неге біз жаңадан бастаған бағдарламашыларға оны бірінші тіл ретінде қолдануға кеңес береміз?
Себебі Python-ды түсіну және үйрену оңай

Егер сіз бұрын кодтамаған болсаңыз, бірақ бірінші жұмыс бағдарламаңызды мүмкіндігінше тезірек іске қосқыңыз келсе, Python-ды міндетті түрде сынап көруіңіз керек. Ең қарапайым мысал - берілген фразаны экранға шығаратын программа. Міне, оның коды үш түрлі тілде қалай көрінеді. Код жолдарының саны мен анықтығын салыстырыңыз.

«Java» көптеген жақшаларды пайдалана отырып, 5 жолды қажет етеді:
''';

  String lessonsTextP2 = '''
Бағдарламалаудағы кітапханалар тапсырмалардың нақты түрлерін шешуге арналған құралдар деп аталады. Python үшін танымал кітапханалардың кейбір мысалдары:

«Pygame» шағын ойындар мен мультимедиялық қосымшаларды жасауға арналған кітапхана.

«NumPy» жасанды интеллектпен және машиналық оқытумен жұмыс істеуге арналған кітапхана. Күрделі математикалық есептеулер үшін қолданылады.

«Pandas» үлкен деректермен жұмыс істеуге арналған кітапхана.

«SQLAlchemy» мәліметтер қорымен жұмыс істеуге арналған кітапхана.

«Django, Flask» серверлік қосымшаларды әзірлеуге арналған кітапханалар.
''';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 240,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'img/header1.png',
                fit: BoxFit.cover,
              ),
            ),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 0,
              crossAxisCount: 1,
              childAspectRatio: size.width / size.height - 0.14,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: 600,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: 'Кіріспе',
                            color: Colors.black.withOpacity(0.8),
                          ),
                          AppLargeText(
                              text: 'Сабақ 1',
                              size: 20,
                              color: Colors.black.withOpacity(0.5)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(Icons.star,
                                  color: index < gottenStars
                                      ? Colors.amber[300]
                                      : Colors.grey);
                            }),
                          ),
                          const SizedBox(width: 6),
                          AppText(
                            size: 12,
                            text: 'күрделілік деңгейі',
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ],
                      ),
                      const SizedBox(height: 35),
                      AppLargeText(
                        text: 'Python деген не?',
                        color: Colors.black.withOpacity(0.8),
                        size: 22,
                      ),
                      const SizedBox(height: 10),
                      AppText(text: lessonsTextP1),
                      Container(
                        height: 80,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('img/lesson1_1.png'),
                        )),
                      ),
                      const SizedBox(height: 15),
                      AppText(
                          text:
                              '«С» да дәл осылай жұмыс істейді, бірақ жолдар аз:'),
                      Container(
                        height: 80,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('img/lesson1_2.png'),
                        )),
                      ),
                      const SizedBox(height: 15),
                      AppText(
                          text: 'Python тек бір түсінікті жолды пайдаланады'),
                      Container(
                        height: 50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('img/lesson1_3.png'),
                        )),
                      ),
                      const SizedBox(height: 15),
                      AppLargeText(
                          size: 18,
                          text:
                              'Python-да барлық мәселелерді шешуге арналған көптеген дайын «кітапханалар» бар'),
                      const SizedBox(height: 10),
                      AppText(text: lessonsTextP2),
                      Row(
                        children: [
                          const SizedBox(width: 210),
                          ResponsiveButton(
                            isResponsive: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
