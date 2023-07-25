import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/screens/hotel_screen.dart';
import 'package:ticketbookingapp/screens/ticket_view.dart';
import 'package:ticketbookingapp/utils/app_info_list.dart';
import 'package:ticketbookingapp/utils/app_styles.dart';
import 'package:ticketbookingapp/widgets/double_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headLineStyle3,
                        ),
                        Gap(5),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage("assets/images/img1.jpg"))),
                    ),
                  ],
                ),
                Gap(10),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD)),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xfFBFC205),
                      ),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                Gap(40),
                AppDoubleTextWidget(bigText: "Upcoming flights", smallText: "view all")
              ],
            ),
          ),
          Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,)).toList(),
            ),
          ),
          Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: AppDoubleTextWidget(bigText: "Hotels", smallText: "view all")
          ),
          Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child:  Row(
              children:hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
            ),
            ),
        ],
      ),
    );
  }
}
