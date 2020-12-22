import 'package:flutter/material.dart';
import 'package:wisata_pekalongan/detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Pekalongan',
      theme: ThemeData.dark(),
      home: DetailScreen(),
    );
  }
}
