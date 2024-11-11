void main(List<String> args) {
  // List<String> mevalar = ["Olma", "Uzum"];
  // print(mevalar.last);

  // Set<int> yoshlar = {21, 312, 213};
  // yoshlar.add(21);
  // print(yoshlar);

  // map
  Map<String, dynamic> malumoti = {
    "ism": "Sunnat",
    "kurs": 3,
    "manzil": {
      "viloyat": "Toshkent",
      "shahar": "Toshkent",
    },
    "yosh": null,
  };

  print(malumoti['manzil']);

  
}
