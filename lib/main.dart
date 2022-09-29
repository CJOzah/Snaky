import 'package:flutter/material.dart';
import 'game.dart';

void main() {
  runApp(MyApp());
}

ThemeData _appTheme() {
  final ThemeData base = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  return base.copyWith();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _appTheme(),
      home: GamePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
