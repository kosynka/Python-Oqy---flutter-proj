import 'package:flutter/material.dart';
import 'package:learn_python/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  String text;
  Color color;
  Color itemColor;

  ResponsiveButton(
      {Key? key,
      this.width,
      this.isResponsive = false,
      this.text = 'келесі',
      this.color = Colors.blueAccent,
      this.itemColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              size: 20,
              text: text,
              color: Colors.white,
            ),
            SizedBox(width: 7),
            Image.asset(
              'img/next_button.png',
              color: itemColor,
              width: 40,
            ),
          ],
        ),
      ),
    );
  }
}
