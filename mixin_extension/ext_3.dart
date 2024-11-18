// ignore_for_file: public_member_api_docs, sort_constructors_first
extension UserClass on Map<String, dynamic> {
  

  User toUser() {
    User user = User(ism: this['ism'], yosh: this['yosh']);
    return user;
  }

  String toStringQil() {
    return "{$this['ism']}, yosh: ${this['yosh']}";
  }
}

class User {
  String ism;
  int yosh;
  User({
    required this.ism,
    required this.yosh,
  });

  @override
  String toString() => 'User(ism: $ism, yosh: $yosh)';
}

void main(List<String> args) {
  Map<String, dynamic> userData = {
    "ism": "Asadbek",
    "yosh": 21,
  };

  User user2 = User(ism: userData['ism'], yosh: userData['yosh']);
  print(user2);

  User user = userData.toUser();
  print(user);
  print(userData.toStringQil());
}
