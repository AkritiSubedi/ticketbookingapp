import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketbookingapp/screens/ticket_view.dart';
import 'package:ticketbookingapp/utils/app_layout.dart';
import 'package:ticketbookingapp/utils/app_styles.dart';
import 'package:ticketbookingapp/widgets/column_layout.dart';
import 'package:ticketbookingapp/widgets/layout_builder_widget.dart';
import 'package:ticketbookingapp/widgets/ticket_tabs.dart';

import '../utils/app_info_list.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getHeight(20)),
              children: [
                Gap(AppLayout.getHeight(40)),
                Text(
                  "Tickets",
                  style: Styles.headLineStyle1,
                ),
                Gap(AppLayout.getHeight(20)),
                AppTicketTabs(firstTab: "Upcomming", secondTab: "Previous"),
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: 'Flutter DB',
                            secondText: 'Passenger',
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          AppColumnLayout(
                            firstText: '5221478566',
                            secondText: 'Passport',
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                        width: 5,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            firstText: '0055 444 77147',
                            secondText: 'Number of E-Ticket',
                            alignment: CrossAxisAlignment.start,
                            isColor: false,
                          ),
                          AppColumnLayout(
                            firstText: 'B2SG28',
                            secondText: 'Booking code ',
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      AppLayoutBuilderWidget(
                        sections: 15,
                        isColor: false,
                        width: 5,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/visa.jpg",
                                    scale: 11,
                                  ),
                                  Text(
                                    "*** 2462",
                                    style: Styles.headLineStyle3,
                                  )
                                ],
                              ),
                              Gap(5),
                              Text(
                                "Payment method",
                                style: Styles.headLineStyle4,
                              )
                            ],
                          ),
                          AppColumnLayout(
                            firstText: '\$249.99',
                            secondText: 'Price',
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
