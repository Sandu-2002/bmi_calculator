import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BMIcalculatorpage extends StatefulWidget {
  const BMIcalculatorpage({super.key});

  @override
  State<BMIcalculatorpage> createState() => _BMIcalculatorpageState();
}

class _BMIcalculatorpageState extends State<BMIcalculatorpage> {
  bool isMale = true;
  double height = 183;
  int weight = 74;
  int age = 30;
  double bmi = 0;

  double calculateBMI({required int weight, required double height}) {
    double heightInMeters = height / 100;
    return weight / (heightInMeters * heightInMeters);
  }

  Color getBMIColor(double bmi) {
    if (bmi < 18.5) {
      return Colors.blue;
    } else if (bmi < 25) {
      return Colors.green;
    } else if (bmi < 30) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kBackgroundcolor,
        foregroundColor: kActivecolor,
        title: const Text('BMI Calculator'),
      ),
      backgroundColor: kBackgroundcolor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                            var bmiValue = calculateBMI(
                              weight: weight,
                              height: height,
                            );
                            setState(() {
                              bmi = bmiValue;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: isMale
                                ? kselectedTileBorderDecoration
                                : kTileBorderDecoration,
                            child: const Column(
                              children: [
                                Icon(Icons.male, size: 50, color: kActivecolor),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: kActivecolor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                            var bmiValue = calculateBMI(
                              weight: weight,
                              height: height,
                            );
                            setState(() {
                              bmi = bmiValue;
                            });
                          },
                          child: Container(
                            decoration: !isMale
                                ? kselectedTileBorderDecoration
                                : kTileBorderDecoration,
                            padding: const EdgeInsets.all(20),
                            child: const Column(
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 50,
                                  color: kActivecolor,
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: kActivecolor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Container(
                    decoration: kTileBorderDecoration,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "Height",
                          style: TextStyle(fontSize: 24, color: kActivecolor),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              height.toStringAsFixed(1),
                              style: TextStyle(
                                color: kActivecolor,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                fontSize: 24,
                                color: kActivecolor,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          min: 80,
                          max: 250,
                          value: height,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                            var bmiValue = calculateBMI(
                              weight: weight,
                              height: height,
                            );
                            setState(() {
                              bmi = bmiValue;
                            });
                          },
                          thumbColor: kbuttoncolor,
                          activeColor: kActivecolor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: kTileBorderDecoration,
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text(
                                "Weight",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: kActivecolor,
                                ),
                              ),
                              Text(
                                "$weight",
                                style: TextStyle(
                                  color: kActivecolor,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    elevation: 0,
                                    backgroundColor: kscalebuttoncolor,
                                    shape: ShapeBorder.lerp(
                                      CircleBorder(),
                                      CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {
                                      if (weight > 25) weight--;
                                      var bmiValue = calculateBMI(
                                        weight: weight,
                                        height: height,
                                      );
                                      setState(() {
                                        bmi = bmiValue;
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove,
                                      color: kActivecolor,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  FloatingActionButton(
                                    elevation: 0,
                                    backgroundColor: kscalebuttoncolor,
                                    shape: ShapeBorder.lerp(
                                      CircleBorder(),
                                      CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {
                                      if (weight < 250) weight++;
                                      var bmiValue = calculateBMI(
                                        weight: weight,
                                        height: height,
                                      );
                                      setState(() {
                                        bmi = bmiValue;
                                      });
                                    },
                                    child: Icon(Icons.add, color: kActivecolor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Container(
                          decoration: kTileBorderDecoration,
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text(
                                "Age",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: kActivecolor,
                                ),
                              ),
                              Text(
                                "$age",
                                style: TextStyle(
                                  color: kActivecolor,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    elevation: 0,
                                    backgroundColor: kscalebuttoncolor,
                                    shape: ShapeBorder.lerp(
                                      CircleBorder(),
                                      CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {
                                      if (age > 10) age--;
                                      var bmiValue = calculateBMI(
                                        weight: weight,
                                        height: height,
                                      );
                                      setState(() {
                                        bmi = bmiValue;
                                      });
                                    },
                                    child: Icon(
                                      Icons.remove,
                                      color: kActivecolor,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  FloatingActionButton(
                                    elevation: 0,
                                    backgroundColor: kscalebuttoncolor,
                                    shape: ShapeBorder.lerp(
                                      CircleBorder(),
                                      CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {
                                      if (age < 100) age++;
                                      var bmiValue = calculateBMI(
                                        weight: weight,
                                        height: height,
                                      );
                                      setState(() {
                                        bmi = bmiValue;
                                      });
                                    },
                                    child: Icon(Icons.add, color: kActivecolor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              decoration: kTileBorderDecoration,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Your BMI is:",
                    style: TextStyle(fontSize: 20, color: kActivecolor),
                  ),
                  Text(
                    bmi.toStringAsFixed(1),
                    style: TextStyle(
                      color: getBMIColor(bmi),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            /*Spacer(),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: kbuttoncolor,
                      foregroundColor: kActivecolor,
                      shape: RoundedRectangleBorder(),
                      minimumSize: const Size(double.infinity, 70),
                    ),
                    onPressed: () {
                      final bmi = calculateBMI(weight: weight, height: height);
                      print("BMI:$bmi");
                    },
                    child: const Text(
                      'Calculate BMI',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}
