import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';
import 'package:ticket_app/base/widgets/app_coloum_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';

class TicketView extends StatelessWidget {
  const TicketView({
    super.key,
    this.wholeScreen = false,
    required this.ticket,
  });
  final bool wholeScreen;
  final Map<String, dynamic> ticket;

  @override
  Widget build(BuildContext context) {
    // Get Size this widget
    final size = MediaQuery.of(context).size;

    return SizedBox(
      // Calculate widht of this widget
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            // TOP CARD SECTION (BLUE)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyle.ticketBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  // ROW 1 : Show deperature and destination with icons first line
                  Row(
                    children: [
                      TextStyleThrid(text: ticket["from"]["code"]),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(
                              randomDevider: 6,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.57,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleThrid(text: ticket["to"]["code"]),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // ROW 2 : Show deperature and destination name with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: ticket["from"]["name"]),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket["flying_time"]),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["to"]["name"],
                          align: TextAlign.end,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // DASH AND DOTS SECTION
            Container(
              color: AppStyle.ticketOrange,
              child: const Row(
                children: [
                  // LEFT CICRLE
                  BigCircle(
                    isRight: true,
                  ),
                  // DASH DASH
                  Expanded(
                      child: AppLayoutBuilderWidget(
                          randomDevider: 10, width: 2)),
                  // RIGHT CIRCLE
                  BigCircle(
                    isRight: false,
                  )
                ],
              ),
            ),
            // BOTTOM CARD SECTION (BLUE)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyle.ticketOrange,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  // Colom aprochment
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColoumTextLayout(
                        topText: ticket["date"],
                        bottomText: "Date",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColoumTextLayout(
                        topText: ticket["departure_time"],
                        bottomText: "Deperature time",
                        alignment: CrossAxisAlignment.center,
                      ),
                      AppColoumTextLayout(
                        topText: ticket["number"].toString(),
                        bottomText: "Number",
                        alignment: CrossAxisAlignment.end,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
