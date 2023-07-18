import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ticketbookingapp/utils/app_styles.dart';
import 'package:ticketbookingapp/widgets/thick_container.dart';

import '../utils/app_layout.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21))),
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "NYC",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    ThickContainer(),
                    Expanded(
                        child: Stack(
                          children: [SizedBox(
                                              height: 24,
                                              child: LayoutBuilder(
                          builder:
                              (BuildContext context, BoxConstraints constraints) {
                            print("The width is ${constraints.constrainWidth()}");
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                width: 3,
                                height: 1,
                                child: DecoratedBox(decoration: BoxDecoration(color: Colors.white),),
                              ),),
                            );
                          },
                                              ),
                                            ),
                          ],
                        )),
                    Center(
                      child: Transform.rotate(angle:1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white,
                      )),
                    ),
                    ThickContainer(),
                    Expanded(child: Container()),
                    Text(
                      "London",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
