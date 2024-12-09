import 'package:flutter/material.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          border: Border.all(width: 2.5, color: Colors.white),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}

/* 
Widget ini akan menghasilkan lingkaran dengan border putih 
di sekelilingnya dan padding 3 piksel di dalamnya. 
Namun, karena tidak ada lebar atau tinggi yang ditentukan, 
ukuran Container ini akan bergantung pada ukuran konten 
di dalamnya atau seberapa besar widget lain yang 
membungkusnya.

*/