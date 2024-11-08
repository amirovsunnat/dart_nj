// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  Car? nullableCar;
  // nullableCar = Car(make: "Chevrolet", model: "Genter", year: 2022);
  print(nullableCar);

  // Car nonNullableCar = Car(make: "Chevrolet", model: "Monza", year: 2024);

  // print(nullableCar);

  // // print(nullableCar?.model);
  // print(nonNullableCar);
}

class Car {
  String make;
  String model;
  int year;

  Car({
    required this.make,
    required this.model,
    required this.year,
  });

  @override
  String toString() => 'Car(make: $make, model: $model, year: $year)';
}
