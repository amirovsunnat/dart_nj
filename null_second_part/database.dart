class Database {
  late String connection;

  void connect() {
    connection = "Database is connected";
    print(connection);
  }
}

void main(List<String> args) {
  Database database = Database();
  database.connect();
  // print(database.connection);
}
