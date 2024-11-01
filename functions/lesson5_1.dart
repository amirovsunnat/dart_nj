void main(List<String> args) {
  print(
    boshqaFunksiyaniQaytar(
      info: "Info",
      reciever: "kimdur",
      subject: "subject",
    ),
  );

  // print(mashhurlikDarajasi("Mia"));

  // print(soliqSummasi(300));

  var ismlar = ['ali', 'vali', 'aziz'];

  ismlar.forEach(
    (soz) => kattaHarflardaChopEt(soz),
  );
}

void kattaHarflardaChopEt(String soz) {
  soz = soz.replaceAll("a", "b");

  print(soz.toUpperCase());
}

String boshqaFunksiyaniQaytar({
  required String info,
  required String reciever,
  required String subject,
}) {
  return emailYuborish(
    batafsil: info,
    mavzu: subject,
    qabulQiluvchi: reciever,
  );
}

String emailYuborish({
  String qabulQiluvchi = "abdumalik@gmail.com",
  String mavzu = "ish yuzasidan",
  String batafsil = "Ish yuzasidan",
}) {
  return "Kimga: $qabulQiluvchi\nMavzu: $mavzu\n\nYozilgan xat: $batafsil";
}

/**
 *- Functions in Dart consist of:
    - **Return type**: Specifies the data type returned by the function.
    - **Function name**: Identifier of the function.
    - **Parameters**: Inputs provided to the function.
    - **Body**: Contains the code to execute.
 */

List<String> ismlar = ["Mia", "Ross", "Chandler", "Joey", "Monica"];

bool mashhurlikDarajasi(String ism_) {
  if (ismlar.contains(ism_)) {
    return ism_.startsWith("M");
  }
  return false;
}

// tear-offs
double soliqniHisobla(double maosh) {
  return maosh * 12 / 100;
}

var soliqSummasi = soliqniHisobla;

// external function
external String toString();
