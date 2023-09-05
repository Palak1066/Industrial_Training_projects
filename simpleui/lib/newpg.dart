// import 'package:flutter/material.dart';
// import 'main.dart';
//
//
// class Third extends StatefulWidget {
//   const Third({super.key});
//
//   @override
//   State<Third> createState() => _ThirdState();
// }
//
// class _ThirdState extends State<Third> {
//
//   TextEditingController city = TextEditingController();
//   TextEditingController state = TextEditingController();
//   TextEditingController country = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Simple UI"),
//        leading: Icon(Icons.bubble_chart),
//        actions: [IconButton(onPressed: (){}, icon: Icon(
//          Icons.library_books,))],
//       ),
//       body: DecoratedBox(
//         decoration: BoxDecoration(
//         image: DecorationImage(
//         image: AssetImage("ppp.gif"),
//           fit: BoxFit.cover,
//       )
//       ),
//        child: Center(
//          child: Column(
//          children: [
//            TextField(controller: city,style: TextStyle(color: Colors.green),decoration: InputDecoration(hintText: "City")),
//            TextField(controller: state, style: TextStyle(color: Colors.cyan), decoration: InputDecoration(hintText: "State")),
//            TextField(controller: country,  style: TextStyle(color: Colors.greenAccent),decoration: InputDecoration(hintText: "Country")),
//            ElevatedButton(onPressed:(){
//              Navigator.push(context, MaterialPageRoute(builder: (hi)=>Second()));
//            },
//                child: Text("Submit"))
//     ] ,
//     ),
//     ),
//     ),);
//   }
// }
//
//
//
