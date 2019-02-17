import 'dart:math';

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

class Rectangle {
  int width;
  int height;
  Point origin;

  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  @override
  String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';
}

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    // To trigger exception, don't implement a check for 'triangle'.
    throw 'Can\'t create $type.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  /**
   * @override
   * num get ares {
   * }
   */
  num get area => pi * pow(radius, 2);
}

class CircleMock implements Circle {
  num radius;
  num area;
}

class Square implements Shape {
  final num side;
  Square(this.side);
  /**
   * @override
   * num get ares {
   * }
   */
  num get area => pow(side, 2);
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create $type.';
}

main(List<String> arguments) {
  print('Hello world: ${calculate()}!');
  var bike = new Bicycle(2, 1);
  print(bike);

  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());

//  final circle = Circle(2);
//  final square = Square(2);
  final circle = shapeFactory('circle');
  final square = shapeFactory('square');
  print(circle.area);
  print(square.area);

  try {
    print(Shape('circle').area);
    print(Shape('square').area);
    print(Shape('triangle').area);
  } catch (err) {
    print(err);
  }
}
