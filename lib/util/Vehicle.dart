class Vehicle
{
  String make;
  String model;
  int year;

  Vehicle(String make, String model, int year)
    : this.make = make,
      this.model = model,
      this.year = year;

  @override
  String toString() => 'Car: $make ' ' $model' ' $year';
}