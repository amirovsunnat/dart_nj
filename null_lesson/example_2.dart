void main(List<String> args) {
  print(processData(null));
}

String? processData(String? data) {
  // return data != null ? data : "Null qiymat berilgan";
  // return data ?? "Null qiymat berilgan";

  return data;

  // if (data == null) {
  //   print("Data is null");
  //   return "Null qiymat berilgan";
  // } else {
  //   print(data);
  //   return data;
  // }
}
