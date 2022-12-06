// ignore_for_file: sized_box_for_whitespace

import 'package:booktickets_app/utils/app_layout.dart';
import 'package:booktickets_app/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'hotel_screens_page.dart';

// time : 2:41

class HotelScrren extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScrren({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("Hotel Price is ${hotel['price']}");
    final size = AppLayout.getSize(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
            // ignore: prefer_const_constructors
            context, MaterialPageRoute(builder: (context) => HotelPage()));
      },
      child: Container(
        width: size.width * 0.6,
        height: 350,
        margin: const EdgeInsets.only(top: 7, right: 20),
        padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
        decoration: BoxDecoration(
            color: styles.primaryColor,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 25,
                spreadRadius: 10,
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: styles.primaryColor,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel['image']}"),
                ),
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Text(
              hotel['place'],
              style: styles.headLineStyle2.copyWith(color: styles.lightcolor),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              hotel['description'],
              style: styles.headLineStyle2.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              hotel['price'],
              style: styles.headLineStyle2.copyWith(color: styles.lightcolor),
            ),
          ],
        ),
      ),
    );
  }
}
