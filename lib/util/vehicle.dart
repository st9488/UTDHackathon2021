class Vehicle
{

  Vehicle({required this.make, required this.model, required this.year});

  final String make;
  final String model;
  final String licenseNum = '';
  final int year;

  @override
  String toString() => 'Car: $make ' ' $model' ' $year' 'License Plate: $licenseNum';
}