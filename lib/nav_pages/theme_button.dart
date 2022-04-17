import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

import '../themes.dart';

class ThemeButton extends StatefulWidget {
  const ThemeButton({Key? key}) : super(key: key);

  @override
  State<ThemeButton> createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton> {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcher(
      builder: (context) => IconButton(
        onPressed: () {
          final theme = Theme.of(context).brightness == Brightness.dark
              ? MyThemes.lightTheme
              : MyThemes.darkTheme;
          final switcher = ThemeSwitcher.of(context);
          switcher.changeTheme(theme: theme);
        },
        icon: Icon(
          Icons.dark_mode_outlined,
          size: 30,
          color: Colors.black,
        ),
      ),
    );
  }
}
