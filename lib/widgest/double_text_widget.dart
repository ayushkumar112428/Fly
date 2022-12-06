import 'package:booktickets_app/utils/app_style.dart';
import 'package:flutter/material.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget({Key? key, required this.bigText, required this.smallText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            // ignore: avoid_print
            print("You are tap");
          },
          child: Text(
            smallText,
            style: styles.textStyle.copyWith(color: styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
