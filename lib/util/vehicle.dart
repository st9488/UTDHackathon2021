class Vehicle
{
  String make;
  String model;
  String licenseNum;
  int year;

  Vehicle(this.make, this.model, String license, this.year)
      : licenseNum = license;

  @override
  String toString() => 'Car: $make ' ' $model' ' $year' 'License Plate: $licenseNum';
}