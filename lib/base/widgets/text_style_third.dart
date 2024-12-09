import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';

class TextStyleThrid extends StatelessWidget {
  const TextStyleThrid({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyle.headlineStyle3.copyWith(color: Colors.white),
    );
  }
}
