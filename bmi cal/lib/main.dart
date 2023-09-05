import 'package:flutter/material.dart';
void main(){
  runApp(Home());
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homeapp()
    );
  }
}
class Homeapp extends StatefulWidget {
  const Homeapp({super.key});

  @override
  State<Homeapp> createState() => _HomeappState();
}

class _HomeappState extends State<Homeapp> {
  int count=0;
  double BMI=0.0;
  void counter(){
    setState(() {
      count++;
    });
  }
  TextEditingController name = TextEditingController();
  TextEditingController _height = TextEditingController();
  TextEditingController _weight = TextEditingController();
  String res="";
  double h=0.0;
  double w=0.0;

  void bmi(){
    h = double.parse(_height.text.toString());
    w = double.parse(_weight.text.toString());
    setState(() {
      BMI = w/((h/100)*(h/100));
      if(BMI<18.5){ res= " YOU'RE UNDERWEIGHT";}
      if(BMI>18.5 && BMI<24){ res=" YOU'RE FIT";}
      if(BMI>24){ res=" YOU'RE OVERWEIGHT";}
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI Calculator',style: TextStyle(
          fontSize: 35, fontWeight: FontWeight.bold,
        ),)),
        leading: Icon(Icons.calculate),
        actions: [
          IconButton(onPressed:() {counter();}, icon: Icon(Icons.monitor_weight))
        ],
      ),
      body: Center(child: Container(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset("img_1.png", height: 200,),
              Container(
                width: 300,
                child: TextField( controller: name,
                  decoration: InputDecoration(
                    icon: Icon(Icons.list),
                      hintText: 'name '),  ),
              ),
              Container(
                width: 300,
                child: TextField(controller: _height,
                  decoration: InputDecoration(
                    icon: Icon(Icons.height),
                      hintText: 'height(m)',),),
              ),
              Container(
                width: 300,
                child: TextField(controller: _weight,
                  decoration: InputDecoration(
                    icon: Icon(Icons.line_weight),
                      // enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                      //   color: Colors.cyanAccent, width: 2.0,)),
                      hintText: 'weight(kg)'),),
              ),
              SizedBox(height: 10,) ,
              ElevatedButton(onPressed: (){
                bmi();
               }, style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pink),
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)))
              ),
                  child: Text('calculate')),
              SizedBox(height: 15,) ,
              Text('BMI IS $BMI'),Text(res, style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold,
              ),),
            ],
          ),
        ),
        height: 400,
        margin: EdgeInsets.all(100),
        width: 400,
        alignment: Alignment.center,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.only(
               topLeft: Radius.circular(50),
               topRight: Radius.zero,
               bottomLeft: Radius.zero,
               bottomRight: Radius.circular(50)
             ),
             color: Colors.pink[100],
           ),
      ),
      ),);
  }
}
