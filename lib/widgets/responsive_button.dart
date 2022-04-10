import 'package:flutter/material.dart';
import 'package:learn_python/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  bool? hasIcon;
  double? width;
  String text;
  Color color;
  Color itemColor;
  double borderRadius;
  double textSize;

  ResponsiveButton({
    Key? key,
    this.width,
    this.isResponsive = false,
    this.text = 'келесі',
    this.color = Colors.blueAccent,
    this.itemColor = Colors.black,
    this.hasIcon = true,
    this.borderRadius = 10,
    this.textSize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius), color: color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              size: textSize,
              text: text,
              color: Colors.white,
            ),
            SizedBox(width: 7),
            Container(
                child: hasIcon == true
                    ? Image.asset(
                        'img/next_button.png',
                        color: itemColor,
                        width: 40,
                      )
                    : null),
          ],
        ),
      ),
    );
  }
}
