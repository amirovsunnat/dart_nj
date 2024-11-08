class Shaxs {
  String ism;
  Shaxs({
    required this.ism,
  });
}

void main(List<String> args) {
  // Shaxs shaxs = Shaxs(ism: "Sunnat")..ism = "Bobur";
  // print(shaxs.ism);

  Shaxs? shaxs;
  shaxs = Shaxs(ism: "Sunnat");
  shaxs = null;

  print(shaxs?.ism);

  // nullable emas
  Shaxs shaxs2 = Shaxs(ism: "Shaxs2");

  // xato beradi
  // shaxs2 = null;
}
