import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/AuthenticationPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double buttonOffset = 0.0;
  Offset imageOffset = Offset.zero;
  String titleText = "Deliver";
  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width - 80;
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "ClickedBy ",
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Capture & Make Moments : Your Frame ",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: 400,
            height: 400,
            child: Image.asset("assets/images/canon1.png"),
          ),
          const SizedBox(
            width: 120,
            height: 120,
          ),
          GestureDetector(
            onPanUpdate: (details) {
              if (details.delta.dx > 0 && buttonOffset <= buttonWidth - 80) {
                setState(() {
                  buttonOffset += details.delta.dx;
                });
              }
            },
            onPanEnd: (_) {
              if (buttonOffset > buttonWidth / 2) {
                setState(() {
                  buttonOffset = buttonWidth - 80;
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AuthenticationPage()));
              } else {
                setState(() {
                  buttonOffset = 0.0;
                });
              }
            },
            child: Container(
              width: buttonWidth,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Stack(children: [
                AnimatedContainer(
                  height: 80,
                  width: buttonOffset + 80,
                  decoration: BoxDecoration(
                    color: Colors.red.shade200,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  duration: const Duration(milliseconds: 200),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 80,
                      height: 70,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      child: const Center(
                        child: Icon(
                          Icons.chevron_right,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: const EdgeInsets.only(left: 5),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
