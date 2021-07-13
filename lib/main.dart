import 'package:examen/src/pages/Home_page.dart';
import 'package:examen/src/pages/zelda_details.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Breath of the wild TI5-2',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => HomePage(),
        '/details': (_) => ZeldaDetails(),
      },
    );
  }
}
