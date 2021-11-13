import 'package:flutter/material.dart';
//import 'package:utd_hackathon2021/pages/driver_information.dart';
import 'package:utd_hackathon2021/pages/license_numbers.dart';
import 'package:utd_hackathon2021/pages/login_page.dart';
import 'package:utd_hackathon2021/pages/vehicle_info_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HackUTD 2021',
      theme: ThemeData(
        colorScheme: const ColorScheme(
            // Lighter Pink Color
            primary: Color.fromRGBO(240, 123, 255, 1),

            // Darker Variant Of Primary Pink
            primaryVariant: Color.fromRGBO(186, 5, 211, 1),

            // Light Blue Color
            secondary: Color.fromRGBO(27, 221, 247, 1),

            // Darker Variant of Primary Blue
            secondaryVariant: Color.fromRGBO(25, 85, 189, 1),

            // White Surface Color
            surface: Color.fromRGBO(255, 255, 255, 1),

            // Black Background Color
            background: Color.fromRGBO(240, 23, 22, 1),

            // Red Error Color
            error: Color.fromRGBO(176, 0, 32, 1),

            // Black Color On Primary/Secondary/Surface
            onPrimary: Color.fromRGBO(0, 0, 0, 1),
            onSecondary: Color.fromRGBO(0, 0, 0, 1),
            onSurface: Color.fromRGBO(0, 0, 0, 1),

            // White On Background/Error
            onBackground: Color.fromRGBO(255, 255, 255, 1),
            onError: Color.fromRGBO(255, 255, 255, 1),

            // Overall Brightness Level
            brightness: Brightness.dark
        ),
        fontFamily: 'BabasNeue',
        textTheme: const TextTheme (
          headline1: TextStyle(fontSize: 36, color: Color.fromRGBO(0, 0, 0, 1)),
          headline2: TextStyle(fontSize: 26, color: Color.fromRGBO(0, 0, 0, 1)),
          headline3: TextStyle(fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1)),
          bodyText1: TextStyle(fontSize: 12, color: Color.fromRGBO(0, 0, 0, 1)),

        )
      ),
      // Starts on the Login Screen
      initialRoute: "Vehicle Information",
      // List of routes for our User to use
      routes: {
        // Login Route for the User
        //"Login": (context) => const LoginPage(),
        // Route for Driver Information
        "Vehicle Information": (context) => const VehiclePage(),
        "LicensePlate": (context) => const LicenseNumbers()
      },
    );
  }
}