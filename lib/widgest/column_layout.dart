// ignore_for_file: non_constant_identifier_names

import 'package:booktickets_app/utils/app_layout.dart';
import 'package:booktickets_app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppColumnLayout extends StatelessWidget {
  final String fristText;
  final String secondText;
  final bool? iscolor;
  final bool? issize;
  final CrossAxisAlignment Alignment;
  const AppColumnLayout(
      {Key? key,
      required this.fristText,
      required this.secondText,
      required this.Alignment, this.iscolor,this.issize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: Alignment,
      children: [
        issize==null ? Text(
          fristText,
          style: iscolor==null? styles.headLineStyle3.copyWith(color: Colors.white): styles.headLineStyle3,
        ):Text(
          fristText,
          style: iscolor==null? styles.headLineStyle3.copyWith(color: Colors.white): styles.headLineStyle2,
        ),
        Gap(AppLayout.getHeight(5)),
        // issize==null ? Gap(1): Row(
        //   children: [
        //     Icon(FluentSystemIcons.ic_fluent_home_filled)
        //   ],
        // ),
        Text(secondText, style: styles.headLineStyle4),
      ],
    );
  }
}
