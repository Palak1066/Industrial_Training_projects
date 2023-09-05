import 'package:flutter/material.dart';
import 'main.dart';
class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NAVIGATION BAR"),
        leading: Icon(Icons.ice_skating),
      ),
      body: Center(
        child: ElevatedButton( child: Text('last page'),
          onPressed: (){
            Navigator.pop(context);
            //, MaterialPageRoute(
               // builder: (hi)
                //{
                //  return HomePage();
               // }));
          },
        ),
      ),
    );
  }
}
