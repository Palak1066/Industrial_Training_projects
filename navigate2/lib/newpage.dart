import 'dart:async';
import 'package:flutter/material.dart';
import 'secondnew.dart';
class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (fun) => Second()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("NAVIGATION BAR"),
          leading: Icon(Icons.ice_skating),
        ),
      body: Center(
        child: Icon(Icons.home),
        /*ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (fun){
                  return Second();
            }));
          },
          child: Text('NAVIGATE'),
        ),*/
      )
    );
  }
}
