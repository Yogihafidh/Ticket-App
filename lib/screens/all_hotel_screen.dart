import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/hotel_view.dart';

class AllHotelScreen extends StatelessWidget {
  const AllHotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Hotels"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: hotelList
                  .take(3)
                  .map((hotel) => Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        child: HotelView(
                          hotel: hotel,
                          wholeScreen: true,
                        ),
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
