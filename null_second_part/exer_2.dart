void main(List<String> args) {
  List<String>? student1 = ["Mirzoulug'bek", "Sardor", "Javlon", "Jaloliddin"];
  List<String>? student2 = ["Sardor", "Firdavs"];
  List<String>? student3 = ["Miraziz", "Samandar"];
  List<String>? students4;

  student3 = null;

  List<String> allStudents = [
    ...?student1,
    ...?student2,
    ...?student3,
    ...?students4
  ];

  print(allStudents);
}
