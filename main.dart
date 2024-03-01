import 'dart:io';

void main() {
  String name = getName().toString();
  int age = getAge();
  double weight = getWeight();
  double height = getHeight();
  List<String> zones = ['Underweight', 'Normal', 'Overweight', 'Obese'];
  Map<String, String> rzones = {
    'Underweight': '0-18.5',
    'Normal': '18.5-24.9',
    'Overweight': '25-29.9',
    'Obese': '30 and above'
  };
  print("These are the BMI zones: $zones");
  print("These are the ranges associated with the zones $rzones");
  print(
      "$name, you are $age years old and your BMI = ${calculateBMI(weight, height)}");
}

String? getName() {
  print("Enter your name:");
  return stdin.readLineSync();
}

int getAge() {
  print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!);
  return age;
}

double getWeight() {
  print("Enter your weight:");
  return double.parse(stdin.readLineSync()!);
}

double getHeight() {
  print("Enter your height in meters:");
  return double.parse(stdin.readLineSync()!);
}

double calculateBMI(double weight, double height) {
  return weight / (height * height);
}
