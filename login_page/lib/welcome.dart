import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'logiin.dart';

class welcm extends StatefulWidget {
  const welcm({super.key});

  @override
  State<welcm> createState() => _welcmState();
}

class _welcmState extends State<welcm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img_2.png"),
                fit: BoxFit.cover,
              )
          ),
          child: Center(
            child: Container(
              height: 200, width: 800,
              child: Column(
                children: [
                  Text(" WELCOME YOU'RE LOGGED IN", style: TextStyle(
                    fontSize: 30, color: Colors.greenAccent, fontWeight: FontWeight.bold
                  ),),
                  ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("LOGOUT"))
                ],
              ),
            ),
          ),
        ),
    );
  }
}
