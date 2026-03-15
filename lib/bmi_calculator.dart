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
      appBar: AppBar(title: const Text('BMI Calculator')),
      body: Container(
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
                    ElevatedButton(onPressed: () {}, child: Text("Male")),
                    ElevatedButton(onPressed: () {}, child: Text("Female")),
                  ],
                ),
                Column(
                  children: [
                    Text("Height"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "183",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("cm"),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text("Weight"),
                        Text(
                          "74",
                          style: TextStyle(
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
                    Column(
                      children: [
                        Text("Weight"),
                        Text(
                          "74",
                          style: TextStyle(
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
                  ],
                ),
              ],
            ),
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
