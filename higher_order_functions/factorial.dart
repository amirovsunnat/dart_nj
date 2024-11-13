void main(List<String> args) {
  print(factorial(50));
}

int factorial(int number) {
  if (number == 1) {
    return 1;
  }

  return factorial(number - 1) * number;
}
