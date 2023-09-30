import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gradient Button",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff48416a),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print("Tapped!!!");
          },
          child: InkWell(
            splashColor: Colors.white,
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: Colors.white,
                ),
                gradient: LinearGradient(
                    colors: [Color(0xff9230b5), Color(0xff2d8bec)]),
              ),
              child: Container(
                height: h * 0.1,
                width: w * 0.5,
                alignment: Alignment.center,
                child: Text(
                  "Flutter",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xff48416a),
    );
  }
}
