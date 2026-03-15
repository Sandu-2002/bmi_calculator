import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BMIcalculatorpage extends StatefulWidget {
  const BMIcalculatorpage({super.key});

  @override
  State<BMIcalculatorpage> createState() => _BMIcalculatorpageState();
}

class _BMIcalculatorpageState extends State<BMIcalculatorpage> {
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
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: kTileBorderDecoration,
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
                    const SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        decoration: kTileBorderDecoration,
                        padding: const EdgeInsets.all(20),
                        child: const Column(
                          children: [
                            Icon(Icons.female, size: 50, color: kInactivecolor),
                            Text(
                              "Female",
                              style: TextStyle(
                                fontSize: 24,
                                color: kInactivecolor,
                              ),
                            ),
                          ],
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
                            "183",
                            style: TextStyle(
                              color: kActivecolor,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(fontSize: 24, color: kActivecolor),
                          ),
                        ],
                      ),
                      Slider(
                        min: 80,
                        max: 250,
                        value: 183,
                        onChanged: (value) {},
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
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(),
                                    CircleBorder(),
                                    0.5,
                                  ),
                                  onPressed: () {},
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(width: 10),
                                FloatingActionButton(
                                  elevation: 0,
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(),
                                    CircleBorder(),
                                    0.5,
                                  ),
                                  onPressed: () {},
                                  child: Icon(Icons.add),
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
                              "Height",
                              style: TextStyle(
                                fontSize: 24,
                                color: kActivecolor,
                              ),
                            ),
                            Text(
                              "172",
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
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(),
                                    CircleBorder(),
                                    0.5,
                                  ),
                                  onPressed: () {},
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(width: 10),
                                FloatingActionButton(
                                  elevation: 0,
                                  shape: ShapeBorder.lerp(
                                    CircleBorder(),
                                    CircleBorder(),
                                    0.5,
                                  ),
                                  onPressed: () {},
                                  child: Icon(Icons.add),
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
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Calculate BMI'),
            ),
          ],
        ),
      ),
    );
  }
}
