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
      body: Container(
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
                                "74",
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
                                      setState(() {
                                        weight--;
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
                                      setState(() {
                                        weight++;
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
                                "30",
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
                                      setState(() {
                                        age--;
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
                                      setState(() {
                                        age++;
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
            SizedBox(height: 25),
            Spacer(),
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
                    onPressed: () {},
                    child: const Text(
                      'Calculate BMI',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
