import 'package:flutter/material.dart';
import 'newpage2.dart';
import 'dart:async';
class Newpage extends StatefulWidget {
  const Newpage({super.key});

  @override
  State<Newpage> createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  //for splash screen
  //method 1
  /*void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){// after 3 sec it navigates automatically
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage() ));
    });
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Icon(Icons.ice_skating))
    );
  }
}
