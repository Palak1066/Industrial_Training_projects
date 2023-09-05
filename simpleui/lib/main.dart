import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


void main() {
  runApp(Simple());
}

class Simple extends StatelessWidget {
  const Simple({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Second(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController country = TextEditingController();

  String img = "assets/ppp.gif";
  int coun = 0;
  String _city = "";
  String _state = "";
  String _country = "";
  double ?lat1;
  double ?lon1;
  var temp;
  var p;
  var h;
  var wea;

  void count(int con) {
    if (con == 0) {
      setState(() {
        img = "assets/sss.gif";
        coun = 1;
      });
    }
    if(con == 1) {
      setState(() {
        img = "assets/ppp.gif";
        coun = 0;
      });
    }
  }

  void getloc() async{
    _city=city.text;
    _state=state.text;
    _country=country.text;
    final loc = await http.get(Uri.parse('http://api.openweathermap.org/geo/1.0/direct?q=$_city,$_state,$_country&limit=4&appid=b3dafc9a8012bfd5ba545b6fac55a169'));
    var data = jsonDecode(loc.body.toString());
    print(data);
    lat1=data[0]['lat'];
    lon1=data[0]['lon'];
    print(lat1);
    print(lon1);
    final weather = await http.get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=$lat1&lon=$lon1&appid=b3dafc9a8012bfd5ba545b6fac55a169"));
    var dataa = jsonDecode(weather.body.toString());
    print(dataa);
    temp=dataa['main']['temp'];
    p=dataa['main']['pressure'];
    h=dataa['main']['humidity'];
    wea=dataa["weather"][0]["main"];
    print(temp);
    print(p);
    print(h);
    if(wea == 'Clouds'){
      setState(() {
        temp = dataa["main"]['temp'];
        img = 'cloud.gif';
      });
    }
    if(wea == 'Haze'){
      setState(() {
        temp =  dataa["main"]['temp'];
        img= "haze.gif";
      });
    }
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Simple UI"),
          leading: Icon(Icons.bubble_chart),
          actions: [IconButton(onPressed: () {}, icon: Icon(
            Icons.library_books,))
          ],
        ),
        body: DecoratedBox(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              )
          ),
          child: Center(
            child: Column(
              children: [
                TextField(controller: city,
                    style: TextStyle(color: Colors.green),
                    decoration: InputDecoration(hintText: "City")),
                TextField(controller: state,
                    style: TextStyle(color: Colors.cyan),
                    decoration: InputDecoration(hintText: "State")),
                TextField(controller: country,
                    style: TextStyle(color: Colors.greenAccent),
                    decoration: InputDecoration(hintText: "Country")),
                ElevatedButton(onPressed: () {
                  count(coun);
                  getloc();
                  //Navigator.push(context, MaterialPageRoute(builder: (hi)=>Third()));
                }, child: Text("Submit")),
                Text('Temp is $temp'),
              ],
            ),
          ),
        ),);
    }
  }


