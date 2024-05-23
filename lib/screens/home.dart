import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/screens/image_paths.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool _issearched = false;
    Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Container(
          height: screensize.height,
          width: screensize.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  opacity: 0.7,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/Cutout.jpg"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("goodMorning ",
                  style: GoogleFonts.cormorantUnicase(
                      textStyle: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 45,
                          fontWeight: FontWeight.bold))),
              Text("  Location",
                  style: GoogleFonts.cormorantUnicase(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(255, 191, 229, 191),
                          fontSize: 29,
                          fontWeight: FontWeight.w500))),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: screensize.height * 0.07,
                        width: screensize.width * 0.75,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(15), // Border radius
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.1),
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10, bottom: 8),
                          child: TextFormField(),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        splashColor: const Color.fromARGB(255, 47, 53, 48),
                        onTap: () {
                          setState(() {
                            _issearched = !_issearched;
                          });
                        },
                        child: const Icon(Icons.search_outlined,
                            color: Color.fromARGB(255, 62, 70, 62), size: 40),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screensize.height * 0.1),
              Container(
                height: screensize.height * 0.6,
                width: screensize.width * 0.88,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), // Border radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.1),
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(imagepaths[2]),
                        height: screensize.height * 0.2,
                        width: screensize.width * 0.2,
                      ),
                      Text("21° C",
                          style: GoogleFonts.cormorantUnicase(
                              textStyle: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold))),
                      Text("rainy",
                          style: GoogleFonts.cormorantUnicase(
                              textStyle: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold))),
                      const SizedBox(height: 15),
                      Text(
                          " ${DateTime.now().toString().substring(0, 10)} 🕛  ${DateTime.now().toString().substring(10, 19)}",
                          style: GoogleFonts.cormorantUnicase(
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 194, 214, 198),
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold))),
                      const Padding(
                        padding: EdgeInsets.only(
                            left: 15.0, right: 15, top: 15, bottom: 15),
                        child: Divider(
                          color: Color.fromARGB(255, 52, 54, 52),
                          height: 1,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.asset(
                                  "assets/icons/temp_min.png",
                                  height: 35,
                                  width: 35,
                                  color:
                                      const Color.fromARGB(255, 194, 214, 198),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("MinTemp",
                                      style: GoogleFonts.cormorantGaramond(
                                          textStyle: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 194, 214, 198),
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal))),
                                  Text("19° C",
                                      style: GoogleFonts.cormorantGaramond(
                                          textStyle: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 194, 214, 198),
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal))),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.asset(
                                  "assets/icons/temp_max.png",
                                  height: 35,
                                  width: 35,
                                  color:
                                      const Color.fromARGB(255, 194, 214, 198),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("MaxTemp",
                                      style: GoogleFonts.cormorantGaramond(
                                          textStyle: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 194, 214, 198),
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal))),
                                  Text("21° C",
                                      style: GoogleFonts.cormorantGaramond(
                                          textStyle: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 194, 214, 198),
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal))),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.asset(
                                  "assets/icons/sunny.png",
                                  height: 30,
                                  width: 30,
                                  color:
                                      const Color.fromARGB(255, 194, 214, 198),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Day",
                                      style: GoogleFonts.cormorantGaramond(
                                          textStyle: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 194, 214, 198),
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal))),
                                  Text("19° C",
                                      style: GoogleFonts.cormorantGaramond(
                                          textStyle: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 194, 214, 198),
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal))),
                                ],
                              ),
                              const SizedBox(width: 60),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.asset(
                                  "assets/icons/halfmoon.png",
                                  height: 30,
                                  width: 30,
                                  color:
                                      const Color.fromARGB(255, 194, 214, 198),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Night ",
                                      style: GoogleFonts.cormorantGaramond(
                                          textStyle: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 194, 214, 198),
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal))),
                                  Text("21° C",
                                      style: GoogleFonts.cormorantGaramond(
                                          textStyle: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 194, 214, 198),
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal))),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
              ),
            ],
          )),
    );
  }
}
