void main(List<String> args) {
  var numbers = [1, 2, 3, 4, 5];

  var map = Map();
  map["name"] = "Sunnat";
  map.update(
    "name",
    (value) => "Ziyodulla",
    ifAbsent: () => "Javlonbek",
  );

  map.putIfAbsent(
    "age",
    () => 100,
  );
  
  map.forEach(
    (key, value) => print("Key: $key => value: $value"),
  );
  // print(numbers.take(3));
}
