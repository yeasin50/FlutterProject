import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:tutorial/screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData.light(),
          home: HomeScreen(),
        );
      },
    );
  }
}