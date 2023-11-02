import 'package:demo/constants/app_colors.dart';
import 'package:demo/root/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        navigationBarTheme: const NavigationBarThemeData().copyWith(labelTextStyle: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return const TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w700,
              color: blueGradientStart,
              letterSpacing: 1.0,
            );
          }
          return const TextStyle(
            fontSize: 10.0,
            fontWeight: FontWeight.w500,
            color: unSelectedIconColor,
            letterSpacing: 1.0,
          );
        }),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor,

        ),

        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
