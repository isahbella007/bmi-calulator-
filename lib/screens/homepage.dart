// ignore_for_file: avoid_print

import 'package:bmi/bmi_calculator.dart';
import 'package:bmi/enum.dart';
import 'package:bmi/screens/result.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // I want to change the color of the container when it has been tapped on
  Gender? selectedContainer;
  int sliderValue = 50;
  int weight = 10;
  int age = 1;
  Calculator c1 = Calculator(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink,
      appBar: AppBar(
        elevation: 0,
        title: const Text("BMI Calculator"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        children: [
          // Gender cards are in a row so use row widget
          Expanded(
            child: Row(
              // First row is for the male and female gender stuff
              children: [
                Expanded(
                  child: GestureDetector(
                    // Gesture detector is used to make the container interactive
                    onTap: () {
                      setState(() {
                        selectedContainer = Gender.male;
                      });
                      print(selectedContainer);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedContainer == Gender.male
                            ? Colors.blue
                            : Colors.blue[900],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.male,
                            size: 90,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "MALE",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedContainer = Gender.female;
                      });
                      print("You selected female!");
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedContainer == Gender.female
                            ? Colors.pink
                            : Colors.pink[900],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.female,
                            size: 90,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "FEMALE",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              // Second row is for the Height
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "HEIGHT",
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            Text(
                              sliderValue.toString(),
                              style: const TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Text(
                              "cm",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          value: sliderValue.toDouble(),
                          min: 50.0,
                          max: 225.0,
                          onChanged: (value) {
                            setState(() {
                              sliderValue = value.toInt();
                            });
                          },
                          inactiveColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              // Third row is for the Age and kg
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          weight.toString(),
                          style: const TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              color: Colors.white,
                              // textColor: Colors.white,
                              child: const Icon(
                                Icons.add,
                                size: 30,
                              ),
                              padding: const EdgeInsets.all(10),
                              shape: const CircleBorder(),
                            ),
                            MaterialButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              color: Colors.white,
                              // textColor: Colors.white,
                              child: const Icon(
                                Icons.remove,
                                size: 30,
                              ),
                              padding: const EdgeInsets.all(10),
                              shape: const CircleBorder(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          age.toString(),
                          style: const TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              color: Colors.white,
                              // textColor: Colors.white,
                              child: const Icon(
                                Icons.add,
                                size: 30,
                              ),
                              padding: const EdgeInsets.all(10),
                              shape: const CircleBorder(),
                            ),
                            MaterialButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              color: Colors.white,
                              // textColor: Colors.white,
                              child: const Icon(
                                Icons.remove,
                                size: 30,
                              ),
                              padding: const EdgeInsets.all(10),
                              shape: const CircleBorder(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Result(
                    bmi: c1.getbmi(sliderValue, weight),
                    bmiCategory: c1.getBmiCategory(), 
                    displayMessage: c1.getDisplayMessage(),
                  )));
            },
            child: Container(
              color: Colors.blue,
              height: 80,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Calculate your BMI",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
