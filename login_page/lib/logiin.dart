import 'package:flutter/material.dart';
import 'welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: log(),
    );
  }
}
 class log extends StatefulWidget {
   const log({super.key});

   @override
   State<log> createState() => _logState();
 }

 class _logState extends State<log> {

  TextEditingController _Email = TextEditingController();
  TextEditingController _Pass = TextEditingController();
  // void err(){
  //   Text(" INVALID EMAIL OR PASSWORD");
  // }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Login Page"),
       ),
       body:
       Container(
         decoration: BoxDecoration(
         color: Colors.black,),
         // decoration: BoxDecoration(
         //     image: DecorationImage(
         //       image: AssetImage("img_2.png"),
         //       fit: BoxFit.cover,
         //     )
         // ),
         child: Center(
           child: Container(
             height: 300, width: 350,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(40),
                 bottomRight: Radius.circular(40),
               )
             ),
             child: Column(
                   children: [
                     SizedBox(height: 20,),
                     Text("LOGIN", style: TextStyle(
                       fontSize: 25, fontWeight: FontWeight.bold
                     ),),
                     SizedBox(height: 20,),
                     Container(
                       width: 300, color: Colors.grey[350],
                       child: TextField(controller: _Email, style: TextStyle(color: Colors.lightBlueAccent),
                         decoration: new InputDecoration(
                           enabledBorder: OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.black,width: 2.0)
                           ),
                           focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.grey,width: 2.0)
                           ),
                           icon: Icon(Icons.email),
                           hintText: "Email"),),
                     ),
                     SizedBox(height: 20,),
                     Container(
                       width: 300, color: Colors.grey[350],
                       child: TextField(controller: _Pass,
                         style:
                         TextStyle(color: Colors.lightBlueAccent),
                         decoration: new InputDecoration(
                           enabledBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.black,width: 2.0)
                           ),
                           focusedBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.grey,width: 2.0)
                           ),
                           icon: Icon(Icons.password),
                           hintText: "Password"),),
                     ),
                     SizedBox(height: 20,),
                     ElevatedButton(onPressed: (){
                       FirebaseAuth.instance.signInWithEmailAndPassword(
                           email: _Email.text, password: _Pass.text).then((value) {
                       Navigator.push(
                           context, MaterialPageRoute(
                           builder: (fun)=> welcm()));}).onError((error, stackTrace) => null);
                     },
                         style: ButtonStyle(
                             backgroundColor: MaterialStateProperty.all(
                                 Colors.black
                             ),
                             shape: MaterialStateProperty.all(
                                 RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ))
                         ),                         child: Text("LOGIN")
                     ),
                     SizedBox(height: 10,),
                     ElevatedButton(onPressed: (){
                       FirebaseAuth.instance.createUserWithEmailAndPassword(
                           email: _Email.text, password: _Pass.text);
                     },
                         style: ButtonStyle(
                             backgroundColor: MaterialStateProperty.all(
                                 Colors.black
                             ),
                           shape: MaterialStateProperty.all(
                               RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(20),
                               ))
                         ),
                         child: Text("Registration"))
                   ],
                 ),
           ),
         ),
       ),
     );
   }
 }
