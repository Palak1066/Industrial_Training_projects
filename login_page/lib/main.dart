import 'package:flutter/material.dart';
import 'logiin.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyDVdTtFUM8PqirMQ1TbWV26ibX2zIZFtiw",
        appId: "1:712816527068:web:a39b92a46753afe0ec9619",
        messagingSenderId: "712816527068",
        projectId: "login-17d43"
    )
  );
  runApp(const MyApp());
}
