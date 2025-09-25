//  Q2
//  Model shapes to compute total paintable area and cost.
//  Requirements:- Provide a general shape type (concrete class) with an area() method that can be overridden.- Implement at least three concrete shape types with encapsulated dimensions and validated constructors (invalid → print; keep previous).- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client code).- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total cost to 2 decimals.

void main() {
  List<Shape> shapes = [
    Rectangle(width: 2.0, height: 3.0),
    Circle(radius: 1.0),
    Square(side: 2.0),
  ];
  double totalArea = 0.0;
  double totalCost = 0.0;

  for (var shape in shapes) {
    totalArea += shape.area();
  }

  if (totalArea <= 50) {
    totalCost = totalArea * 1.5;
  } else if (totalArea <= 150) {
    totalCost = 50 * 1.5 + (totalArea - 50) * 1.25;
  } else {
    totalCost = (50 * 1.5) + (100 * 1.25) + (totalArea - 150) * 1.0;
  }

print('Total area: ${totalArea.toStringAsFixed(2)} and total cost: ${totalCost.toStringAsFixed(2)}');
}

class Shape {
  double area() {
    return 0.0;
  }
}

class Rectangle extends Shape {
  double _width = 0.0;
  double _height = 0.0;
  Rectangle({required double width, required double height}) {
    if (width > 0) {
      _width = width;
    } else {
      print('invalid width');
    }
  }

  set width(double width) {
    if (width > 0) {
      _width = width;
    } else {
      print('invalid width');
    }
  }

  set height(double height) {
    if (height > 0) {
      _height = height;
    } else {
      print('invalid height');
    }
  }

  double get width => _width;
  double get height => _height;

  @override
  double area() {
    return _width * _height;
  }
}

class Circle extends Shape {
  double _radius = 0.0;
  Circle({required double radius}) {
    if (radius > 0) {
      _radius = radius;
    } else {
      print('invalid radius');
    }
  }

  set radius(double radius) {
    if (radius > 0) {
      _radius = radius;
    } else {
      print('invalid radius');
    }
  }

  double get radius => _radius;

  @override
  double area() {
    return 3.14 * _radius * _radius;
  }
}

class Square extends Shape {
  double _side = 0.0;
  Square({required double side}) {
    if (side > 0) {
      _side = side;
    } else {
      print('invalid side');
    }
  }

  set side(double side) {
    if (side > 0) {
      _side = side;
    } else {
      print('invalid side');
    }
  }

  double get side => _side;

  @override
  double area() {
    return _side * _side;
  }
}
