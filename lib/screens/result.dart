import 'package:bmi/screens/homepage.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String? bmi, bmiCategory, displayMessage;
  const Result(
      {Key? key,
      @required this.bmi,
      @required this.bmiCategory,
      @required this.displayMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI Calculator"),
          elevation: 0,
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Your Result",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w700)),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(bmiCategory.toString(),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 150),
                      Text(bmi.toString(),
                          style: const TextStyle(
                              fontSize: 60,
                              color: Colors.white,
                              fontWeight: FontWeight.w600)),
                      const SizedBox(height: 130),
                      Text(
                        displayMessage.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context); 
              },
              child: Container(
                color: Colors.red,
                height: 80,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    "Re-Calculate your BMI",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
