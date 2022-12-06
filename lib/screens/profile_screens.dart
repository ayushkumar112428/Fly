// ignore_for_file: avoid_print

import 'package:booktickets_app/utils/app_layout.dart';
import 'package:booktickets_app/utils/app_style.dart';
import 'package:booktickets_app/widgest/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreens extends StatelessWidget {
  const ProfileScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/tickit_logo1.png"),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Ticket",
                    style: styles.headLineStyle1,
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Text(
                    "New-York",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Gap(AppLayout.getHeight(2)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3),
                        vertical: AppLayout.getHeight(3)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3),
                    ),
                    child: Row(children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF526799),
                        ),
                        child: const Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      const Text(
                        "Premium status",
                        style: TextStyle(
                          color: Color(0xFF526799),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Gap(AppLayout.getHeight(5)),
                    ]),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("You are tapped Edit.");
                    },
                    child: Text(
                      "Edit",
                      style: styles.textStyle.copyWith(
                          color: styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 18, color: const Color(0xFF264CD2)),
                    color: Colors.transparent,
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      // ignore: sort_child_properties_last
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: styles.primaryColor,
                        size: 27,
                      ),
                      backgroundColor: Colors.white,
                    ),
                    Gap(AppLayout.getHeight(10)),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // ignore: unnecessary_string_escapes
                          "You\'v got a new award",
                          style: styles.headLineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        Text(
                          "You have 95 f;ights in a year",
                          style: styles.headLineStyle2.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Text(
            "Accumulated miles",
            style: styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(10)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: styles.bgColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 1,
                    blurRadius: 1,
                  ),
                ]),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15)),
                Text(
                  "112428",
                  style: TextStyle(
                    fontSize: 45,
                    color: styles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gap(AppLayout.getHeight(25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "23 May 2021",
                      style: styles.headLineStyle4.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Gap(AppLayout.getHeight(9)),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Gap(AppLayout.getHeight(9)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      fristText: "22 111",
                      secondText: "Miles",
                      Alignment: CrossAxisAlignment.start,
                      iscolor: false,
                    ),
                    AppColumnLayout(
                        fristText: "Airline CO",
                        secondText: "Received forom",
                        Alignment: CrossAxisAlignment.end,
                        iscolor: false),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      fristText: "24",
                      secondText: "Miles",
                      Alignment: CrossAxisAlignment.start,
                      iscolor: false,
                    ),
                    AppColumnLayout(
                        fristText: "McDonnal's",
                        secondText: "Received forom",
                        Alignment: CrossAxisAlignment.end,
                        iscolor: false),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    AppColumnLayout(
                      fristText: "28 242",
                      secondText: "Miles",
                      Alignment: CrossAxisAlignment.start,
                      iscolor: false,
                    ),
                    AppColumnLayout(
                        fristText: "Exuma",
                        secondText: "Received forom",
                        Alignment: CrossAxisAlignment.end,
                        iscolor: false),
                  ],
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          InkWell(
            onTap: () {
              print("Tap a butten");
            },
            child: Center(
              child: Text(
                "How to get more miles",
                style: styles.textStyle.copyWith(
                    color: styles.primaryColor, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//6:12