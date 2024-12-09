import 'package:flutter/material.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTicketScreen extends StatelessWidget {
  const AllTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Ticket"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((ticket) => TicketView(
                        ticket: ticket,
                        wholeScreen: true,
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
