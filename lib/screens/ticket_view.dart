import 'package:booktickets_app/utils/app_style.dart';
import 'package:booktickets_app/widgest/thick_container.dart';
import 'package:flutter/material.dart';
import '../utils/app_layout.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  final bool? dis;
  const TicketView({Key? key, required this.ticket, this.isColor, this.dis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(169),
      child: Container(
        // color: Colors.black,
        margin: EdgeInsets.only(
          right: AppLayout.getHeight(15),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //blue part container.
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                color: isColor == null ? styles.bluecolr : Colors.white,
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      ticket['from']['code'],
                      style: isColor == null
                          ? styles.headLineStyle3.copyWith(color: Colors.white)
                          : styles.headLineStyle3,
                    ),
                    Expanded(child: Container()),
                    const ThickContainer(
                      isColor: true,
                    ),
                    Expanded(
                        child: Stack(
                      children: [
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              // ignore: avoid_print
                              print(
                                  "The width is ${constraints.constrainWidth()}");
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                          width: AppLayout.getWidth(3),
                                          height: AppLayout.getHeight(1),
                                          child: DecoratedBox(
                                              decoration: BoxDecoration(
                                            color: isColor == null
                                                ? Colors.white
                                                : Colors.grey.shade300,
                                          )),
                                        )),
                              );
                            },
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: isColor == null
                                  ? Colors.white
                                  : const Color(0xFF8ACCF7),
                            ),
                          ),
                        ),
                      ],
                    )),
                    const ThickContainer(
                      isColor: true,
                    ),
                    Expanded(child: Container()),
                    Text(
                      ticket['to']['code'],
                      style: isColor == null
                          ? styles.headLineStyle3.copyWith(color: Colors.white)
                          : styles.headLineStyle3,
                    ),
                  ],
                ),
                SizedBox(
                  height: AppLayout.getHeight(5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(
                        ticket['from']['name'],
                        style: isColor == null
                            ? styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : styles.headLineStyle4,
                      ),
                    ),
                    // Expanded(child: Container()),
                    Text(
                      ticket['flying_time'],
                      style: isColor == null
                          ? styles.headLineStyle4.copyWith(color: Colors.white)
                          : styles.headLineStyle4.copyWith(color: Colors.black),
                    ),
                    // Expanded(child: Container()),
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(
                        ticket['to']['name'],
                        textAlign: TextAlign.end,
                        style: isColor == null
                            ? styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : styles.headLineStyle4,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            //orange part container.
            Container(
              color: isColor == null
                  ? styles.orangColor
                  : Colors.white, // const Color(0xFFF37B67),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color:
                          isColor == null ? Colors.grey.shade200 : Colors.white,
                    )),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              // ignore: prefer_const_constructors
                              (index) => SizedBox(
                                    width: 5,
                                    height: 1,
                                    // ignore: prefer_const_constructors
                                    child: DecoratedBox(
                                        // ignore: prefer_const_constructors
                                        decoration: BoxDecoration(
                                      color: isColor == null
                                          ? Colors.white
                                          : Colors.grey.shade300,
                                    )),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      color:
                          isColor == null ? Colors.grey.shade200 : Colors.white,
                    )),
                  ),
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor == null ? 10 : 0),
                    bottomRight: Radius.circular(isColor == null ? 10 : 0)),
                color: isColor == null ? styles.orangColor : Colors.white,
              ),
              padding: const EdgeInsets.only(
                  top: 10, bottom: 16, left: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: isColor == null
                                ? styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : styles.headLineStyle3,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Date",
                            style: isColor == null
                                ? styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : styles.headLineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: isColor == null
                                ? styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : styles.headLineStyle3,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Departure time",
                            style: isColor == null
                                ? styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : styles.headLineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: isColor == null
                                ? styles.headLineStyle3
                                    .copyWith(color: Colors.white)
                                : styles.headLineStyle3,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Number",
                            style: isColor == null
                                ? styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : styles.headLineStyle4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
