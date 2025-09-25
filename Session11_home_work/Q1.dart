//  Q1
//  Design an OOP model for planning trip fuel across multiple vehicle types.
//  Requirements:- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
//  (invalid → print an error; keep previous values).- Create at least two specialized vehicle types that inherit from the general type and introduce one
//  private field each affecting fuel usage, with validation.- Define a fuel computation method in the general type; specialized types must override it with their own rule.- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
//  which vehicles

void main() {
  List<Vehicle> vehicles = [
    Car(speed: 190, brand: 'toyota', fuelPerKm: 10, fuelCapacity: 5000),
    Bus(stopCount: 8, brand: 'honda', fuelPerKm: 15, fuelCapacity: 3000),
  ];

  List<double> tripDistances = [50, 100, 150];

  for (var vehicle in vehicles) {
      double totalFuel = 0.0;
    for (var distance in tripDistances) {
      totalFuel += vehicle.fuelConsumption(distance);
    }
    if(vehicle.fuelCapacity < totalFuel) {
      print('${vehicle.brand} with fuel capacity ${vehicle.fuelCapacity}L, cannot complete the trip Need ${totalFuel}L.');
    }else{
      print('${vehicle.brand} with fuel capacity ${vehicle.fuelCapacity}L, can complete the trip.');
    }
  }
}

class Vehicle {
  String _brand = 'BMW';
  double _fuelPerKm = 0.0;
  double _fuelCapacity = 0.0;
  Vehicle({
    required String brand,
    required double fuelPerKm,
    required double fuelCapacity,
  }) {
    if (brand.isNotEmpty) {
      _brand = brand;
    } else {
      print('Invalid brand');
    }

    if (fuelPerKm > 0.0) {
      _fuelPerKm = fuelPerKm;
    } else {
      print('Invalid fuel per km');
    }
    if (fuelCapacity > 0.0) {
      _fuelCapacity = fuelCapacity;
    } else {
      print('Invalid fuel capacity');
    }
  }
  set brand(String brand) {
    if (brand.isNotEmpty) {
      _brand = brand;
    } else {
      print('Invalid brand');
    }
  }


  set fuelPerKm(double fuelPerKm) {
    if (fuelPerKm > 0.0) {
      _fuelPerKm = fuelPerKm;
    } else {
      print('Invalid fuel per km');
    }
  }
  set fuelCapacity(double fuelCapacity) {
    if (fuelCapacity > 0.0) {
      _fuelCapacity = fuelCapacity;
    } else {
      print('Invalid fuel capacity');
    }
  }

  String get brand => _brand;
  double get fuelPerKm => _fuelPerKm;
  double get fuelCapacity => _fuelCapacity;

  double fuelConsumption(double distance) {
    return distance * fuelPerKm;
  }
}

class Car extends Vehicle {
  double _speed = 0.0;

  Car({
    required double speed,
    required super.brand,
    required super.fuelPerKm,
    required super.fuelCapacity,
  }) {
    if (speed > 0.0) {
      this._speed = speed;
    } else {
      print('Invalid speed');
    }
  }

  set speed(double speed) {
    if (speed > 0.0) {
      _speed = speed;
    } else {
      print('Invalid speed');
    }
  }

  double get speed => _speed;
  @override
  double fuelConsumption(double distance) {
    if (_speed <= 60) {
      return distance * fuelPerKm;
    } else if (_speed <= 100) {
      return distance * fuelPerKm * 1.1;
    } else {
      return distance * fuelPerKm * 1.25;
    }
  }
}

class Bus extends Vehicle {
  int _stopCount = 0;

  Bus({
    required int stopCount,
    required super.brand,
    required super.fuelPerKm,
    required super.fuelCapacity,
  }) {
    if (stopCount > 0) {
      this._stopCount = stopCount;
    } else {
      print('Invalid stop count');
    }
  }
  set stopCount(int stopCount) {
    if (stopCount > 0) {
      _stopCount = stopCount;
    } else {
      print('Invalid stop count');
    }
  }

  int get stopCount => _stopCount;

  @override
  double fuelConsumption(double distance) {
    return distance * fuelPerKm + (_stopCount * 0.25);
  }
}
