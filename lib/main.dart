import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/screens/all_hotel_screen.dart';
import 'package:ticket_app/screens/all_ticket_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ticket App',
      routes: {
        AppRoutes.homePage: (context) => const BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTicketScreen(),
        AppRoutes.allHotels: (context) => const AllHotelScreen()
      },
    );
  }
}
