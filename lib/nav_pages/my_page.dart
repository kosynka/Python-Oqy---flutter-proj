import 'package:flutter/material.dart';
import 'package:learn_python/nav_pages/profile_widget.dart';
import 'package:learn_python/nav_pages/user.dart';
import 'package:learn_python/nav_pages/user_preferences.dart';

import '../widgets/responsive_button.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final user = UserPreferences.myUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50, left: 15),
            child: Row(
              children: [
                const Icon(Icons.menu, size: 30, color: Colors.black54),
                Expanded(child: Container()),
                Container(
                  padding: const EdgeInsets.only(top: 5),
                  margin: const EdgeInsets.only(right: 20),
                  child: const Icon(
                    Icons.dark_mode_outlined,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          Center(
            child: Container(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  child: ResponsiveButton(
                    width: 160,
                    text: 'PRO Болу',
                    color: Colors.blue,
                    hasIcon: false,
                    borderRadius: 30,
                    textSize: 22,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildButton(context, '60%', 'оқыды'),
                buildDivider(),
                buildButton(context, '4.8', 'баға'),
                buildDivider(),
                buildButton(context, '40%', 'қалды'),
              ],
            ),
          ),
          const SizedBox(height: 24),
          buildAbout(),
        ],
      ),
    );
  }

  Widget buildAbout() => Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Мен туралы',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );

  Widget buildDivider() => Container(
        height: 30,
        child:
            VerticalDivider(color: Colors.grey.withOpacity(0.6), thickness: 1),
      );

  Widget buildName(User user) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              user.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 4),
            Text(
              user.email,
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ],
        ),
      );
  Widget buildButton(BuildContext context, String value, String text) =>
      (MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 2),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 2),
          ],
        ),
      ));
}
