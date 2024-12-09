import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  // Reciving Parameter
  const AppLayoutBuilderWidget(
      {super.key, required this.randomDevider, this.width = 3});
  final int randomDevider;
  final double width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        // 1. Pertama mendapatkan informasi tentang ukuran ruang yang tersedia untuk child widget (BoxConstraints)
        builder: (BuildContext context, BoxConstraints constraint) {
      // 2. Semua elemen yang dihasilkan (widget SizedBox) disusun secara horizontal menggunakan widget Flex.
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        // 3. List.generate berguna untuk menghasilkan sejumlah widget SizedBox sesuai dengan jumlah elemen yang telah dihitung sebelumnya
        children: List.generate(
            // 4. Membagi lebar tersebut dengan nilai randomDevider untuk menentukan berapa banyak elemen yang bisa ditempatkan dalam ruang tersebut
            (constraint.constrainWidth() / randomDevider).floor(),
            (index) => SizedBox(
                  width: width,
                  height: 1,
                  child: const DecoratedBox(
                      decoration: BoxDecoration(color: Colors.white)),
                )),
      );
    });
  }
}

/* 
Rangkuman Langkah-Langkah Algoritma:
1. Terima input parameter randomDevider.
2. Dapatkan lebar ruang yang tersedia menggunakan LayoutBuilder.
3. Hitung jumlah elemen dengan membagi lebar ruang dengan randomDevider.
4. Gunakan List.generate untuk menghasilkan elemen-elemen berdasarkan jumlah yang dihitung.
5. Susun elemen-elemen tersebut dalam satu baris menggunakan Flex dengan distribusi jarak merata.
6. Tampilkan hasil layout.
*/