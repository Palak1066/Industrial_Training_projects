import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class Secnd extends StatelessWidget {
  const Secnd({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ldata(),
    );
  }
}

class Ldata extends StatefulWidget {
  const Ldata({super.key});

  @override
  State<Ldata> createState() => _LdataState();
}

class _LdataState extends State<Ldata> {

  var f1;
  var _f2;
  var _f3;


  void liv() async {
    final d = await http.get(Uri.parse(
        'https://api.thingspeak.com/channels/1596152/feeds.json?api_key=P7S0UYX236LLKQJU&results=1'));
    setState(() {
      var data = jsonDecode(d.body.toString());
      print(data);
      f1 = data['feeds'][0]["field1"];
      _f2 = data['feeds'][0]["field2"];
      _f3 = data['feeds'][0]["field3"];
      print(f1);
      print(_f2);
      print(_f3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Live Data"),
        leading: Icon(Icons.live_help),
      ),
      body: Column(
        children: [
              Text("pm2.5 is $f1 ", style: TextStyle(
                fontSize: 20,color: Colors.green
              ),),
              Text("pm10 is $_f2"),
              Text("ozone is $_f3"),
              ElevatedButton(onPressed: (){
                liv();
              }, child: Text("get"))
            ]
          )
    );
  }
}


