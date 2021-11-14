library progression.globals;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:utd_hackathon2021/util/user.dart';
import 'claim.dart';

String projectName = "ClaimSafe";
late User? currentUser;
late Users currentUserSelf;
late Claim currentClaim;