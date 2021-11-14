class Vehicle
{
  String make;
  String model;
  String licenseNum;
  int year;

  Vehicle(String make, String model, String license, int year)
    : this.make = make,
      this.model = model,
      licenseNum = license,
      this.year = year;

  @override
  String toString() => 'Car: $make ' ' $model' ' $year' 'License Plate: $licenseNum';
}