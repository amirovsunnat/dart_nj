mixin Ovqatlanmoq {
  void ovqatlanmoq(String ism) {
    print("$ism ovqat tanavvul qilmoqda.... 😋");
  }
}

mixin Uxlamoq {
  void uxlamoq(String ism) {
    print("$ism hozir dam olmoqda..... 😴💤");
  }
}

mixin TushlikQilish on Inson {
  void ovqatlanmoq(String ism) {
    print("$ism tushlik qilmoqda.... 😋");
  }
}

abstract class Inson {}

class Shaxs {}

class Teacher extends Inson with TushlikQilish {}

class Hayvon with Uxlamoq, Ovqatlanmoq {
  final String ism;

  Hayvon(this.ism);
}

void main(List<String> args) {
  Hayvon hayvon = Hayvon("Chicco");
  hayvon.ovqatlanmoq(hayvon.ism);
  hayvon.uxlamoq(hayvon.ism);

  Teacher teacher = Teacher();
  teacher.ovqatlanmoq("Sunnat");
}
