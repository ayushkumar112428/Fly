// ignore_for_file: unused_local_variable

import 'package:barcode_widget/barcode_widget.dart';
import 'package:booktickets_app/screens/ticket_view.dart';
import 'package:booktickets_app/utils/app_info_list.dart';
import 'package:booktickets_app/utils/app_layout.dart';
import 'package:booktickets_app/utils/app_style.dart';
import 'package:booktickets_app/widgest/column_layout.dart';
import 'package:booktickets_app/widgest/layout_builder.dart';
import 'package:booktickets_app/widgest/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreens extends StatelessWidget {
  const TicketScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeh = MediaQuery.of(context).size;
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(20),horizontal: AppLayout.getHeight(20)),
            children: [
              const Gap(30),
              Text("Ticket", style: styles.headLineStyle1,),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(fristTabs: "Upcoming", secondTabs: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15),),
                child: TicketView(ticket: ticketList[1],isColor: true,),
              ),

              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(8),vertical: AppLayout.getHeight(15)),
                // height: AppLayout.getHeight(169/2),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(fristText: "Flutter DB", secondText: "Passenger", Alignment: CrossAxisAlignment.start,iscolor: true,),
                        AppColumnLayout(fristText: "2211 222428", secondText: "Passport", Alignment: CrossAxisAlignment.end,iscolor: true,),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    const AppLayoutBuildaer(sections: 15,isColor: true,),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(fristText: "0055 412 51246", secondText: "Number of E - ticket", Alignment: CrossAxisAlignment.start,iscolor: true,),
                        AppColumnLayout(fristText: "B3SG28", secondText: "Booking code", Alignment: CrossAxisAlignment.end,iscolor: true,),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    const AppLayoutBuildaer(sections: 15,isColor: true,),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.webp",scale: 11,),
                                Text(" *** 2428",style: styles.headLineStyle3,),
                              ],
                            ),
                            Text("Payment method",style: styles.headLineStyle4,),
                          ],
                        ),
                        const AppColumnLayout(fristText: "\$250.0", secondText: "Price", Alignment: CrossAxisAlignment.end,iscolor: true,),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(left: 15,right: 15),
                padding: const EdgeInsets.only(top: 15,bottom: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(10)),
                    bottomRight: Radius.circular(AppLayout.getHeight(10)),
                    ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: 'https://pub.ayush/packages/barcode_widget', 
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: styles.textColor,
                      width: double.infinity,
                      height: 70,
                      ),
                  ),
                ),
              ),

              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15),),
                child: TicketView(ticket: ticketList[1],),
                ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(25),
            top: AppLayout.getHeight(sizeh.height/2.35),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape:  BoxShape.circle,
                border: Border.all(color: styles.textColor,width: 2,),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(25),
            top: AppLayout.getHeight(sizeh.height/2.35),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape:  BoxShape.circle,
                border: Border.all(color: styles.textColor,width: 2,),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
