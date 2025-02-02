import 'dart:io';
import 'dart:math';
import 'package:bmiapp/bmi_calculate.dart';
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
  double bmi = 20.0;
  String result = "Normal";
  String comment = "Está todo bien, sigue así";
  int image = 1;


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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
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
                setState(() {});
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
              onChanged: (double value) {
                weight = value;
                setState(() {});
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            SizedBox(
              height: 52.0,
              width: double.infinity,
              child: ElevatedButton(
                child: Text(
                  "Calcular",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff540d6e),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                onPressed: () {
                 
                  BMICalculate bmiCalculate = BMICalculate(height, weight);
                  bmi = bmiCalculate.getBMI();
                  result = bmiCalculate.getResult();
                  comment = bmiCalculate.getComment();
                  image = bmiCalculate.getImage();
                  setState(() {
                    
                  });

                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              bmi.toStringAsFixed(1),
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              result,
              style: TextStyle(
                color: Color(0xffee4266),
                fontSize: 18.0,
              ),
            ),
            Text(
              comment,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14.0,
              ),
            ),
            Expanded(
              child: Image.asset("assets/images/image$image.png"
                  // height: 200,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
