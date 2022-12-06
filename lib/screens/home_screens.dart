import 'package:booktickets_app/screens/hotel_screens.dart';
import 'package:booktickets_app/screens/ticket_view.dart';
import 'package:booktickets_app/utils/app_info_list.dart';
import 'package:booktickets_app/utils/app_layout.dart';
import 'package:booktickets_app/utils/app_style.dart';
import 'package:booktickets_app/widgest/double_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

//time 3:02

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: styles.bgColor,
      body: ListView(
        children: [
          Container(
            // padding: const EdgeInsets.only(left: 10,right: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // const Gap(40),
                Gap(AppLayout.getHeight(10),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Padding(padding: EdgeInsets.only(left: 10,top: 60),),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   "Good Morning",
                        //   style: styles.headLineStyle3,
                        // ),
                        // SizedBox(
                        //   height: AppLayout.getHeight(5),
                        // ),
                        Text("Book Ticket", style: styles.headLineStyle1),
                      ],
                    ),
                    // Image.asset(""),
                    Container(
                      height: AppLayout.getHeight(40),
                      width: AppLayout.getWidth(40),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage("assets/images/tickit_logo1.png"),
                          )),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(25),),
                // Container(
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: const Color(0xFFF4F6FD),
                //   ),
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                //   child: Row(
                //     children: [
                //       const Icon(
                //         FluentSystemIcons.ic_fluent_search_regular,
                //         color: Color(0xFFBFC205),
                //       ),
                //       Text(
                //         "  Search",
                //         style: styles.headLineStyle4,
                //       )
                //     ],
                //   ),
                // ),
                Gap(AppLayout.getHeight(30),),
                const AppDoubleTextWidget(bigText: "Upcoming flights", smallText: "View all"),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(5),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: ticketList.map((singleTicket)=> TicketView(ticket: singleTicket,)).toList(),
            ),
          ),
          Gap(AppLayout.getHeight(15),),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleTextWidget(bigText: "Hotel", smallText: "View all"),
          ),
          Gap(AppLayout.getHeight(10),),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: hotelList.map((singleHotel) => HotelScrren(hotel: singleHotel,)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
