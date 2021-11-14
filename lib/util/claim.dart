import 'package:utd_hackathon2021/util/eye_witness.dart';
import 'package:utd_hackathon2021/util/insurance_info.dart';
import 'package:utd_hackathon2021/util/person.dart';
import 'package:utd_hackathon2021/util/vehicle.dart';

class Claim {
  final String uid;
  List<List<Person>> everyone = [];
  List<List<Vehicle>> vehicles = [];
  InsuranceInfo insurance = InsuranceInfo();
  List<EyeWitness> eyewitnesses = [];

  Claim({required this.uid});

}