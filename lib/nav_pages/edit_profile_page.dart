import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:learn_python/nav_pages/profile_widget.dart';
import 'package:learn_python/nav_pages/textfield_widget.dart';
import 'package:learn_python/nav_pages/theme_button.dart';
import 'package:learn_python/nav_pages/user.dart';
import 'package:learn_python/nav_pages/user_preferences.dart';
import 'package:learn_python/widgets/responsive_button.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => ThemeSwitchingArea(
        child: Scaffold(
          appBar: AppBar(
            leading: BackButton(
              color: Colors.black,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              ThemeButton(),
            ],
          ),
          body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 32),
            physics: BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 20),
              ProfileWidget(
                imagePath: user.imagePath,
                isEdit: true,
                onClicked: () async {},
              ),
              const SizedBox(height: 24),
              TextFieldWidget(
                label: 'Аты-жөні',
                text: user.name,
                onChanged: (name) {},
              ),
              const SizedBox(height: 24),
              TextFieldWidget(
                label: 'Email',
                text: user.email,
                onChanged: (email) {},
              ),
              const SizedBox(height: 24),
              TextFieldWidget(
                label: 'Мен туралы',
                text: user.about,
                maxLines: 5,
                onChanged: (about) {},
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {},
                child: ResponsiveButton(
                  hasIcon: false,
                  width: 120,
                  text: 'сақтау',
                  borderRadius: 12,
                ),
              ),
            ],
          ),
        ),
      );
}
