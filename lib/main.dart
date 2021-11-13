import 'package:flutter/material.dart';

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

      ),
      home:
    );
  }
}