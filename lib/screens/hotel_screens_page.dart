import 'package:booktickets_app/utils/app_layout.dart';
import 'package:booktickets_app/utils/app_style.dart';
import 'package:booktickets_app/widgest/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(top: 20),
            children: [
              Gap(AppLayout.getHeight(40)),
              Container(
                height: size.height * 0.27,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //     left: 10,
              //     right: 10,
              //   ),
              //   child: Container(
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
              //     height: size.height * 0.35,
              //     width: size.width * 0.5,
              //     // width: AppLayout.getHeight(500),
              //     decoration: BoxDecoration(
              //       borderRadius:
              //           BorderRadius.circular(AppLayout.getHeight(15)),
              //       boxShadow: const [
              //         BoxShadow(
              //           offset: Offset(0, 10),
              //           blurRadius: 100,
              //           spreadRadius: 10,
              //           color: Color.fromARGB(255, 164, 192, 214),
              //         )
              //       ],
              //       image: const DecorationImage(
              //         fit: BoxFit.cover,
              //         image: AssetImage("assets/images/hotels1.jpg"),
              //       ),
              //     ),
              //   ),
              // ),
              const Gap(25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: size.height * 0.7,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Gap(60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                           AppColumnLayout(
                            fristText: "Indana Palace Jaipur",
                            secondText: "Inidia",
                            Alignment: CrossAxisAlignment.start,
                            iscolor: false,
                            issize: false,
                          ),
                          AppColumnLayout(
                            fristText: "\$300",
                            secondText: "Per Night",
                            Alignment: CrossAxisAlignment.end,
                            iscolor: false,
                            issize: false,
                          ),
                        ],
                      ),
                      const Gap(20),
                      Row(
                        children: const [
                          Icon(
                            FluentSystemIcons.ic_fluent_star_filled,
                            color: Colors.orange,
                          ),
                          Icon(
                            FluentSystemIcons.ic_fluent_star_filled,
                            color: Colors.orange,
                          ),
                          Icon(
                            FluentSystemIcons.ic_fluent_star_filled,
                            color: Colors.orange,
                          ),
                          Icon(
                            FluentSystemIcons.ic_fluent_star_filled,
                            color: Colors.orange,
                          ),
                          Icon(
                            FluentSystemIcons.ic_fluent_star_filled,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                      const Gap(40),
                      Row(
                        children: [
                          Text(
                            "DETAILS",
                            style: styles.headLineStyle2,
                          ),
                        ],
                      ),
                      const Gap(10),
                      const Text(
                        "Indana Palace Jaipur offers accommodations in Jaipur. Every room at this hotel is air conditioned and is fitted with a TV with cable channels. Certain units feature a seating area to relax in after a busy day. You will find a kettle in the room. Each room is fitted with a private bathroom. For your comfort, you will find bathrobes and slippers.",
                        style: TextStyle(fontSize: 16),
                      ),
                      const Gap(5),
                      const Text("There is a 24-hour front desk at the property.",
                      style: TextStyle(fontSize: 16,),
                      ),
                      const Gap(5),
                      const Text("The hotel also offers car hire. Seesh Mahal is 3.7 mi from Indana Palace Jaipur, while Jaigarh Fort is 3.7 mi from the property. The nearest airport is Jaipur International Airport, 14 mi from Indana Palace Jaipur.",
                      style: TextStyle(fontSize: 16),
                      ),
                      const Gap(20),
                    ],
                  ),
                ),
              ),
              const Gap(50),
            ],
          ),
          Positioned(
            right: AppLayout.getHeight(25),
            // top: AppLayout.getHeight(size.height / 2),
            bottom: AppLayout.getHeight(15),
            child: Container(
              height: size.height*0.09,
              width: size.width*0.86,
             decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 100,
                        spreadRadius: 5,
                        color: Colors.blue,
                      )
                    ],
                  ), 
                  child: Container(
                    height: size.height*0.09,
                    width: size.width*0.86,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    ),
                    child: Center(
                      child: Text("Select Room",style: styles.headLineStyle2.copyWith(color: Colors.black,fontSize: 35),)),
                  ),
            ),
          ),
          Positioned(
            top: AppLayout.getHeight(40),
            left: AppLayout.getHeight(10),
            right: AppLayout.getHeight(10),
            child: Container(
                  padding:const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                  height: size.height * 0.35,
                  width: size.width * 0.9,
                  // width: AppLayout.getHeight(500),
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 120,
                        spreadRadius: 3,
                        color: Color.fromARGB(255, 164, 192, 214),
                      ),
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/hotel1.webp"),
                    ),
                  ),
                ),),
        ],
      ),
    );
  }
}
