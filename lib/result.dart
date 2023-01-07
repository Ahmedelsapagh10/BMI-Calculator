import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  String g;
  int age;
  double result;
  Result({Key? key, required this.g, required this.age, required this.result})
      : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
        backgroundColor: Color.fromARGB(255, 15, 15, 15),
          
          leading: InkWell(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(
                    20,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 250,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Gender is : ${widget.g}",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Tajawal-Bold',
                        fontSize: 32,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Age : ${widget.age}",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Tajawal-Bold',
                        fontSize: 32,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Result : ${widget.result.toStringAsFixed(1)}",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Tajawal-Bold',
                        fontSize: 32,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Image.asset(
                          'asset/images/pngaaa.com-5042955.png',
                          width: 100,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
