void main(List<String> args) {
  User user = User()
    ..age = 12;

  String? userName = user?.name ?? "Foydalanuvchi";
  int? userAge = user?.age ?? 18;

  print("Ism: $userName, Yosh: $userAge");
}

class User {
  String? name;
  int? age;
}
