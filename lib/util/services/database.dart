import 'package:cloud_firestore/cloud_firestore.dart';
import '../eye_witness.dart';
import '../insurance_info.dart';
import '../person.dart';
import '../vehicle.dart';

class DatabaseServiceUnlogged {

  DatabaseServiceUnlogged();

  //collection reference
  final CollectionReference claimsCollection = FirebaseFirestore.instance
      .collection('claims');

  Future newClaim(List<List<Person>> everyone, List<Vehicle> vehicles, InsuranceInfo insurance, List<Eyewitness> eyewitnesses, String accidentAddress) async {
    return await claimsCollection.doc().set(
        {
          'c1P1FirstName': everyone[0][0].firstName,
          'c1P1LastName': everyone[0][0].lastName,
          'c1P1Gender': everyone[0][0].isMale,
          'c1P2FirstName': everyone[0][1].firstName,
          'c1P2LastName': everyone[0][1].lastName,
          'c1P2Gender': everyone[0][1].isMale,
          'c1P3FirstName': everyone[0][2].firstName,
          'c1P3LastName': everyone[0][2].lastName,
          'c1P3Gender': everyone[0][2].isMale,
          'c1P4FirstName': everyone[0][3].firstName,
          'c1P4LastName': everyone[0][3].lastName,
          'c1P4Gender': everyone[0][3].isMale,

          'c2P1FirstName': everyone[1][0].firstName,
          'c2P1LastName': everyone[1][0].lastName,
          'c2P1Gender': everyone[1][0].isMale,
          'c2P2FirstName': everyone[1][1].firstName,
          'c2P2LastName': everyone[1][1].lastName,
          'c2P2Gender': everyone[1][1].isMale,
          'c2P3FirstName': everyone[1][2].firstName,
          'c2P3LastName': everyone[1][2].lastName,
          'c2P3Gender': everyone[1][2].isMale,
          'c2P4FirstName': everyone[1][3].firstName,
          'c2P4LastName': everyone[1][3].lastName,
          'c2P4Gender': everyone[1][3].isMale,

          'car1Make': vehicles[0].make,
          'car1Model': vehicles[0].model,
          'car1LicenseNum': vehicles[0].licenseNum,
          'car1Year': vehicles[0].year,

          'car2Make': vehicles[1].make,
          'car2Model': vehicles[1].model,
          'car2LicenseNum': vehicles[1].licenseNum,
          'car2Year': vehicles[1].year,

              'insuranceCompanyName': insurance.companyName,
              'insuranceNumber': insurance.number,

          'eyeWit1FirstName': eyewitnesses[0].firstName,
          'eyeWit1LastName': eyewitnesses[0].lastName,
          'eyeWit1Number': eyewitnesses[0].phoneNumber,

          'eyeWit2FirstName': eyewitnesses[1].firstName,
          'eyeWit2LastName': eyewitnesses[1].lastName,
          'eyeWit2Number': eyewitnesses[1].phoneNumber,

              "accidentAddress": accidentAddress

        });
  }





}