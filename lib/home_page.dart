import 'package:flutter/material.dart';
import 'package:learn_python/widgets/app_large_text.dart';
import 'package:learn_python/widgets/app_text.dart';
import '1lesson_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    'html.jpg': 'HTML',
    'css.jpg': 'CSS',
    'js.jpg': 'JavaScript',
    '3dmodelling.jpg': '3D модельдеу',
  };

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        padding: const EdgeInsets.only(top: 50, left: 15),
        child: Row(
          children: [
            Icon(Icons.menu, size: 30, color: Colors.black54),
            Expanded(child: Container()),
            Container(
              margin: const EdgeInsets.only(right: 20),
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.5)),
            ),
          ],
        ),
      ), //menu button
      SizedBox(height: 30),
      Container(
        margin: const EdgeInsets.only(left: 20),
        child: AppLargeText(text: 'Python Oqy'),
      ), //python oqy
      SizedBox(height: 20),
      Container(
        child: Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            labelPadding: const EdgeInsets.only(left: 30, right: 30),
            controller: _tabController,
            labelColor: Colors.black54,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: CircleTabIndicator(color: Colors.blueAccent, radius: 3),
            tabs: [
              Tab(text: 'Кіріспе'),
              Tab(text: 'Алгоритмдер'),
              Tab(text: 'Күтіңіз...')
            ],
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        height: 330,
        width: double.maxFinite,
        child: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FirstLessonPage(),
                      ),
                    );
                  },
                  child: Container(
                    child: Text(
                      'Сабақ ' + (index + 1).toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    margin: const EdgeInsets.only(right: 15, top: 15),
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage('img/welcome-one.jpg'),
                            fit: BoxFit.cover)),
                  ),
                );
              },
            ),
            Text('Келесі 3 сабақ'),
            Text('Күтіңуіңізді сұраймыз'),
          ],
        ),
      ),
      SizedBox(height: 30),
      Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppLargeText(
              text: 'Қосымша курстар оқы',
              size: 20,
            ),
            AppText(
              text: 'Барлығы',
              color: Colors.black54,
            )
          ],
        ),
      ),
      SizedBox(height: 20),
      Container(
        height: 120,
        width: double.maxFinite,
        margin: const EdgeInsets.only(left: 20),
        child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Container(
                margin: const EdgeInsets.only(right: 30),
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                                'img/' + images.keys.elementAt(index)),
                          )),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: AppText(text: images.values.elementAt(index)),
                    ),
                  ],
                ),
              );
            }),
      )
    ]));
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
