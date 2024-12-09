import 'package:flutter/material.dart';

import 'package:ticket_app/base/res/style/app_style.dart';

class HotelView extends StatelessWidget {
  const HotelView({super.key, required this.hotel, this.wholeScreen = false});
  final bool wholeScreen;
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8),
      margin: EdgeInsets.only(right: wholeScreen ? 0 : 16),
      width: wholeScreen ? 350 : size.width * 0.6,
      decoration: BoxDecoration(
          color: AppStyle.primaryColor,
          borderRadius: BorderRadius.circular(18)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
              color: AppStyle.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel["image"]}"))),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            hotel["place"],
            style: AppStyle.headlineStyle3.copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            hotel["destination"],
            style: AppStyle.headlineStyle4.copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "\$${hotel["price"]}/night",
            style: AppStyle.headlineStyle1.copyWith(color: Colors.white),
          ),
        )
      ]),
    );
  }
}
