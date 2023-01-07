import 'dart:math';

import 'package:bmi/result.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool isMale = true;
String g = 'Male';
double height = 100;
int age = 22;
int weight = 80;
double? result;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 15, 15, 15),
        title: Text(
          'BMI',
          style: TextStyle(
            fontFamily: 'TitilliumWeb',
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isMale = true;
                    g = 'Male';
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(
                    20,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: isMale
                            ? Color.fromARGB(255, 250, 84, 34)
                            : Colors.grey,
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(
                          20,
                        )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            'asset/images/f1.png',
                            fit: BoxFit.contain,
                            width: 100,
                            height: 100,
                          ),
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Tajawal-Bold',
                            fontSize: 24,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    g = 'Female';
                    isMale = false;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(
                    20,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: isMale
                            ? Colors.grey
                            : Color.fromARGB(255, 250, 84, 34),
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(
                          20,
                        )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            'asset/images/1111.png',
                            fit: BoxFit.contain,
                            width: 100,
                            height: 100,
                          ),
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'TitilliumWeb',
                            fontSize: 24,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          //2
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(
                    20,
                  )),
              child: Column(
                children: [
                  Text(
                    'Height',
                    style: TextStyle(
                      fontFamily: 'TitilliumWeb',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '${(height).round()} CM',
                    style: TextStyle(
                      fontFamily: 'TitilliumWeb',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  Slider(
                    value: height,
                    max: 200,
                    min: 80,
                    onChanged: (v) {
                      setState(() {
                        height = v;
                      });
                    },
                    activeColor: Color.fromARGB(255, 250, 84, 34),
                  ),
                ],
              ),
            ),
          ),
          //2
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Age
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 120,
                  height: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(
                        20,
                      )),
                  child: Column(
                    children: [
                      Text(
                        'Age',
                        style: TextStyle(
                          fontFamily: 'TitilliumWeb',
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '${age}',
                        style: TextStyle(
                          fontFamily: 'TitilliumWeb',
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(alignment: Alignment.center, children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 250, 84, 34),
                                  borderRadius: BorderRadius.circular(
                                    50,
                                  )),
                              child: FloatingActionButton(
                                backgroundColor:
                                    Color.fromARGB(255, 250, 84, 34),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Icon(
                                  color: Colors.white,
                                  Icons.remove,
                                  size: 38,
                                ),
                              ),
                            ),
                          ]),
                          SizedBox(
                            width: 15,
                          ),
                          Stack(alignment: Alignment.center, children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 250, 84, 34),
                                  borderRadius: BorderRadius.circular(
                                    50,
                                  )),
                              child: FloatingActionButton(
                                backgroundColor:
                                    Color.fromARGB(255, 250, 84, 34),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Icon(
                                  color: Colors.white,
                                  Icons.add,
                                  size: 38,
                                ),
                              ),
                            ),
                          ]),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              // Weight
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 120,
                  height: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(
                        20,
                      )),
                  child: Column(
                    children: [
                      Text(
                        'Wight',
                        style: TextStyle(
                          fontFamily: 'TitilliumWeb',
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        //
                        '${weight}',
                        style: TextStyle(
                          fontFamily: 'TitilliumWeb',
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ), //Buttons Add And Minus
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(alignment: Alignment.center, children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 250, 84, 34),
                                  borderRadius: BorderRadius.circular(
                                    50,
                                  )),
                              child: FloatingActionButton(
                                backgroundColor:
                                    Color.fromARGB(255, 250, 84, 34),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Icon(
                                  color: Colors.white,
                                  Icons.remove,
                                  size: 38,
                                ),
                              ),
                            ),
                          ]),
                          SizedBox(
                            width: 15,
                          ),
                          // minus Button
                          Stack(alignment: Alignment.center, children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 250, 84, 34),
                                  borderRadius: BorderRadius.circular(
                                    50,
                                  )),
                              child: FloatingActionButton(
                                backgroundColor:
                                    Color.fromARGB(255, 250, 84, 34),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Icon(
                                  color: Colors.white,
                                  Icons.add,
                                  size: 38,
                                ),
                              ),
                            ),
                          ]),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          //Button Calcaulate
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed: () {
                double result = weight / pow(height / 100, 2);
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Result(g: g, age: age, result: result);
                  }));
                });
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontFamily: 'TitilliumWeb',
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 250, 84, 34),
                minimumSize: Size(double.infinity, 60),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
