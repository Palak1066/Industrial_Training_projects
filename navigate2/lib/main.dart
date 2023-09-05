import 'package:flutter/material.dart';
import 'newpage.dart';
void main(){
  runApp(HomePage());
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewPage(),
    );
  }
}