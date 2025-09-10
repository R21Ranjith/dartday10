class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void displayInfo() {
    print("Brand: $brand | Year: $year");
  }
}

// Car extends Vehicle
class Car extends Vehicle {
  String fuelType;

  Car(String brand, int year, this.fuelType) : super(brand, year);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Fuel Type: $fuelType");
  }
}

// Bike extends Vehicle
class Bike extends Vehicle {
  bool hasGear;

  Bike(String brand, int year, this.hasGear) : super(brand, year);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Has Gear: ${hasGear ? "Yes" : "No"}");
  }
}

void main() {
  var car = Car("Toyota", 2023, "Petrol");
  var bike = Bike("Yamaha", 2021, true);

  print("\n--- Car Info ---");
  car.displayInfo();

  print("\n--- Bike Info ---");
  bike.displayInfo();
}
