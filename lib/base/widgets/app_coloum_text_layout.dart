import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class AppColoumTextLayout extends StatelessWidget {
  const AppColoumTextLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      this.alignment = CrossAxisAlignment.start});

  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThrid(text: topText),
        const SizedBox(
          height: 5,
        ),
        TextStyleThrid(
          text: bottomText,
        )
      ],
    );
  }
}
