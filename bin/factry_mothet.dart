import 'dart:developer';

import 'package:factry_mothet/factry_mothet.dart' as factry_mothet;

void main(List<String> arguments) {
  print('Hello world: ${factry_mothet.calculate()}!');

  final d1 = Dog("reks");
  log(d1.name);
  final d2 = Dog.dogTuz('alabai');
  log(d2.name);
}

class Dog {
  Dog(this.name);

  final String name;

  factory Dog.dogTuz(String value) {
    return Dog(value);
  }
}
