// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  Baza baza = Baza();

  baza.fromJson({
    "name": null,
    "yosh": 14,
  });
}

class Baza {
  String? name;
  int? yosh;

  Baza({
    this.name,
    this.yosh,
  });

  /*
  
    {
      "name": null,
      "yosh": 15,
    }

   */
  // fromJson
  Baza fromJson(Map<String, dynamic> map) {
    // name = map['name'] is String ? map['name'] : "Ismi mavjud emas";
    // yosh = map['yosh'] is int ? map['yosh'] : 20;

    name = map['name'] ?? " ";
    yosh = map['yosh'] ?? 20;

    print("$name $yosh");
    return Baza(name: name, yosh: yosh);
  }
}
