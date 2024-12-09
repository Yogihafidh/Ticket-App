import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_style.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  final VoidCallback function;

  const AppDoubleText(
      {super.key,
      required this.bigText,
      required this.smallText,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyle.headlineStyle2,
        ),
        InkWell(
          onTap: function,
          child: Text(smallText,
              style: AppStyle.textStyle.copyWith(color: AppStyle.primaryColor)),
        )
      ],
    );
  }
}

/* 
Alur Kerja Widget:
1. Widget AppDoubleText menerima dua teks, bigText dan smallText.
2. Widget ini menyusun kedua teks dalam Row, dengan 
bigText di sebelah kiri dan smallText di sebelah kanan, 
memberikan jarak di antaranya dengan menggunakan 
MainAxisAlignment.spaceBetween.
3. Teks besar ditampilkan dengan gaya yang lebih besar 
(AppStyle.headlineStyle2), sedangkan teks kecil 
ditampilkan dengan gaya default (AppStyle.textStyle), 
tetapi warnanya diubah untuk mengikuti warna primer aplikasi.
4. Teks kecil dibungkus dengan InkWell, yang membuatnya 
interaktif, namun saat ini tidak ada tindakan yang 
dilakukan saat teks tersebut diklik (karena onTap kosong).
*/