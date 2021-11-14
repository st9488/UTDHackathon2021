import 'package:utd_hackathon2021/util/insurance_info.dart';
import 'package:utd_hackathon2021/util/person.dart';
import 'package:utd_hackathon2021/util/vehicle.dart';
import 'package:utd_hackathon2021/util/eye_witness.dart';

class Claim {
  List<List<Person>> everyone = [];
  List<Eyewitness> eyewitness = [];
  List<Vehicle> vehicles = [];
  String accidentAddress = '';
  InsuranceInfo insurance = InsuranceInfo();

  Claim();

}
