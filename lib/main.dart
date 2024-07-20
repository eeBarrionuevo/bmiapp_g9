import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

///Page View Screen
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double height = 100.0;
  double weight = 75.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff540d6e),
        centerTitle: true,
        title: Text(
          "Calcular IMC",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Text(
            "Altura:",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.toStringAsFixed(0),
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "cm",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          Slider(
            value: height,
            min: 40,
            max: 220,
            activeColor: Color(0xffee4266),
            onChanged: (double value) {
              height = value;
              setState(() {
                
              });
            },
          ),
        
          Text(
            "Peso:",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                weight.toStringAsFixed(0),
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Kg",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          Slider(
            value: weight,
            min: 30,
            max: 140,
            activeColor: Color(0xff3bceac),
            onChanged: (double value){
              weight = value;
              setState(() {
                
              });
            },
          ),
        
        
        ],
      ),
    );
  }
}
