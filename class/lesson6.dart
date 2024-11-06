class Kompyuter {
  String? markasi;
  String? modeli;
  double? narxi;
  String? op;
  int? ram;
  int? xotiraHajmi;

  // // default constructor
  // Kompyuter();

  // customConstructor()
  Kompyuter({
    this.markasi,
    this.modeli,
    this.narxi,
    this.op,
    this.ram,
    this.xotiraHajmi,
  });

  // NAMED CONSTRUCTOR
  Kompyuter.narxiBaland(double? narxi) {
    if (narxi != null) {
      this.narxi = narxi;
    } else {
      this.narxi = 1000;
    }
  }

  // ramni yangilash
  void ramniYangila(int ram) {
    this.ram = ram;
  }

  // xotirani yangilash
  void xotiraYangila(int xotira) {
    this.xotiraHajmi = xotira;
  }

  // narxni yangilash
  void narxniYangila(double yangiNarx) {
    this.narxi = yangiNarx;
  }

  @override
  String toString() {
    return 'Kompyuter(markasi: $markasi, modeli: $modeli, narxi: $narxi, op: $op, ram: $ram, xotiraHajmi: $xotiraHajmi)';
  }
}

void main(List<String> args) {
  Kompyuter appleMacbook = Kompyuter(
    markasi: "Apple",
    modeli: "Macbook PRO",
    narxi: 2000,
    op: "macos",
    ram: 32,
    xotiraHajmi: 512,
  );
  print(appleMacbook);
  print("***********************************");

  Kompyuter narxiBaland = Kompyuter.narxiBaland(30000);
  print(narxiBaland);
}
