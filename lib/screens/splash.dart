import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => (Navigator.pushReplacementNamed(context, '/home')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 229, 186),
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 22, 45, 22),
            Color.fromARGB(255, 192, 255, 195),

            // Colors.green,
            // Color.fromARGB(255, 186, 181, 142),
            // Color.fromARGB(255, 237, 230, 165),
          ])),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/darkcloudsun.png",
                    height: 210, width: 210),
                const SizedBox(height: 3),
                Text('Hey Weather',
                    style: GoogleFonts.cormorantSc(
                        textStyle: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )))
              ],
            ),
          ),
        ));
  }
}
