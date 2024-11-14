import 'dart:math';

main() {
  /*
    
        Qiymati 3000 dan katta bo'lgan barcha elementlarni yangi listga saqlang.
     */

  List<Map<String, dynamic>> filterlanganMahsulotlar = [];

  List<Map<String, dynamic>> mahsulotlar = [
    {
      "nomi": "non",
      "price": 5000,
    },
    {
      "nomi": "suv",
      "price": 3000,
    }
  ];

  filterlanganMahsulotlar = mahsulotlar.where(
    (mahsulot) {
      return mahsulot["price"] >= 3000;
    },
  ).toList();

  print(filterlanganMahsulotlar);

  mahsulotlar.where((element) => element["price"] >= 3000);
}
