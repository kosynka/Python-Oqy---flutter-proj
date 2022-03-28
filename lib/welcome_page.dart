import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_python/home_page.dart';
import 'package:learn_python/nav_pages/main_page.dart';
import 'package:learn_python/widgets/app_text.dart';
import 'package:learn_python/widgets/responsive_button.dart';
import 'package:learn_python/widgets/app_large_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.jpg",
    "welcome-two.jpg",
    "welcome-three.jpg",
  ];

  List titleText = [
    'Тегін',
    'Қазақша',
    'Түсінікті',
  ];

  List text = [
    'Python - белсенді дамып келе жатқан сценарийлі тіл, ол әртүрлі мәселелер санын шешу үшін қолданылады.',
    'Python бағдарламалау тілінде Spotify, Amazon, YouTube, Instagram, Netflix, Uber, Dropbox, Pinterest, Reddit жазылған',
    'Ағылшын тілін білсеңіз, Python бағдарламалау тілін тез меңгере аласыз'
  ];

  List backgroundColors = [
    Colors.tealAccent.withOpacity(0.8),
    Colors.yellow.withOpacity(0.8),
    Colors.red.withOpacity(0.3),
  ];

  List colors = [
    Colors.cyan.withOpacity(0.7),
    Colors.orange.withOpacity(0.7),
    Colors.redAccent.withOpacity(0.4),
  ];

  List illustrations = [
    'img/wel1.png',
    'img/wel2.png',
    'img/wel3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: backgroundColors[index],
              child: Container(
                margin: const EdgeInsets.only(top: 140, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          size: 32,
                          color: Colors.black,
                          text: 'Python Oqy',
                        ),
                        SizedBox(height: 10),
                        AppLargeText(
                          color: Colors.black87.withOpacity(0.6),
                          text: titleText[index],
                        ),
                        SizedBox(height: 30),
                        Container(
                          width: 320,
                          child: AppText(
                              color: Colors.black.withOpacity(0.7),
                              size: 20,
                              text: text[index]),
                        ),
                        SizedBox(height: 40),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainPage(),
                              ),
                            );
                          },
                          child: Container(
                            width: 150,
                            child: Row(
                              children: [
                                ResponsiveButton(
                                  width: 120,
                                  text: '',
                                  color: colors[index],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 140),
                        Container(
                          height: 280,
                          child: Image.asset(illustrations[index]),
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 4),
                          width: 8,
                          height: index == indexDots ? 45 : 16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots
                                  ? Colors.black87
                                  : Colors.black.withOpacity(0.4)),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
