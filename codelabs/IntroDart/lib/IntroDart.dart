

int calculate() {
  return 6 * 7;
}

class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  /**
   * Bicycle(int cadence, int speed, int gear) {
   *   this.cadence = cadence;
   *   this.speed = speed;
   *   this.gear = gear;
   * }
   * Bicycle(this.cadence, this.speed, this.gear);
   */

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  /**
   * @override
   * String toString() {
   *   'Bicycle: $speed mph';
   * }
   */
  @override
  String toString() => 'Bicycle: $speed mph';
}

main(List<String> arguments) {
  print('Hello world: ${calculate()}!');
  var bike = new Bicycle(2, 1);
  print(bike);
}
