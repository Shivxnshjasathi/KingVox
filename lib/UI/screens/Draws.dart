import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingroxnew/const/button.dart';

class Draws extends StatefulWidget {
  const Draws({super.key});

  @override
  State<Draws> createState() => _DrawsState();
}

class _DrawsState extends State<Draws> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF012c49),
                    const Color(0xFF167cbf),
                    Colors.white
                  ],
                  stops: [0.0, 0.1, 0.4],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Draws",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            newtile(),
                            SizedBox(
                              width: 20,
                            ),
                            newtile(),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 2.5,
                              ),
                              Container(
                                height: 50,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 16.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Colors.black12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Center(
                                      child: Text(
                                        "Upcoming Draws",
                                        textAlign: TextAlign.left,
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 170,
                                child: Container(
                                  height: 55,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12.0, horizontal: 16.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.yellow.shade200,
                                        Colors.yellow.shade800,
                                      ],
                                      stops: [0.0, 0.9],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomCenter,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Past Draws",
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    InkWell(onTap: () {}, child: tile()),
                    SizedBox(
                      height: 20,
                    ),
                    tile(),
                    SizedBox(
                      height: 20,
                    ),
                    tile()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget tile() {
  return Stack(
    children: [
      Center(
        child: Container(
          height: 320,
          width: 360,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3), // Shadow color
                  spreadRadius: 2, // Spread radius
                  blurRadius: 5, // Blur radius
                  offset: const Offset(0, 4), // Shadow position (x, y)
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(40))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 180,
                width: 400,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "CONGRATS!",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          color: const Color(0xFF012c49),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Mohammad Hussain Shaik on winning",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "AED100,000 Cash",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Ticket No. DC-00319-0615996811",
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Announced on: 10:22PM,26 December 2024",
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: 180,
        width: 400,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3), // Shadow color
                spreadRadius: 2, // Spread radius
                blurRadius: 5, // Blur radius
                offset: const Offset(0, 4), // Shadow position (x, y)
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(40))),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          child: Image.network(
            "https://images.pexels.com/photos/47344/dollar-currency-money-us-dollar-47344.jpeg?auto=compress&cs=tinysrgb&w=600",
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;

  GradientText(this.text, {required this.gradient, required this.style});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      blendMode: BlendMode.srcIn,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}

Widget newtile() {
  return Container(
    height: 350,
    width: 300,
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 5, // Blur radius
            offset: const Offset(0, 4), // Shadow position (x, y)
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(40))),
    child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      child: Image.network(
        "https://images.pexels.com/photos/47344/dollar-currency-money-us-dollar-47344.jpeg?auto=compress&cs=tinysrgb&w=600",
        fit: BoxFit.cover,
      ),
    ),
  );
}
