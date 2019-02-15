import 'package:IntroDart/IntroDart.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });
}

class Bicycle {
  int cadence;
  int speed;
  int gear;

  Bicycle(this.cadence, this.speed, this.gear);


}

