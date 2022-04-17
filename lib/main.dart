import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_python/nav_pages/user_preferences.dart';
import 'package:learn_python/welcome_page.dart';
import 'package:learn_python/themes.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (context) => MaterialApp(
          title: 'Python Oqy',
          debugShowCheckedModeBanner: false,
          theme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
          home: WelcomePage(),
        ),
      ),
    );
  }
}
