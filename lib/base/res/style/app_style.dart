import 'package:flutter/material.dart';

class AppStyle {
  static Color primaryColor = const Color(0xFF687daf);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor);

  static TextStyle headlineStyle1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headlineStyle2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headlineStyle3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);

  static TextStyle headlineStyle4 =
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
}

/* 
Penggunaan static pada kelas AppStyle membuat variabel 
dan metode di dalamnya bisa diakses tanpa perlu membuat 
objek dari kelas tersebut. Artinya, Anda tidak perlu membuat 
salinan dari kelas AppStyle untuk menggunakan nilai seperti 
warna atau gaya teks.

Misalnya, jika Anda menggunakan static untuk warna atau gaya, 
Anda bisa langsung mengaksesnya dengan menggunakan nama kelas, 
seperti AppStyle.primaryColor atau AppStyle.textStyle, 
tanpa perlu membuat objek baru terlebih dahulu.

Jadi, static ini memudahkan kita untuk menggunakan nilai yang 
sama di seluruh aplikasi, dan memastikan nilai tersebut 
konsisten di mana saja.
*/