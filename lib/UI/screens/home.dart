import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingroxnew/UI/screens/Draws.dart';
import 'package:kingroxnew/UI/screens/ticketa_deatils_screen.dart';
import 'package:kingroxnew/const/NRE.dart';
import 'package:kingroxnew/const/button.dart';
import 'package:kingroxnew/const/button2.dart';
import 'package:kingroxnew/const/colours.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 400,
                  child: ClipPath(
                    clipper: BottomCurveClipper(),
                    child: Image.network(
                      "https://images.pexels.com/photos/2115367/pexels-photo-2115367.jpeg?auto=compress&cs=tinysrgb&w=600",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFF012c49),
                        const Color(0xFF012c49),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "FEATURED",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        tile2(),
                        SizedBox(
                          width: 10,
                        ),
                        tile2(),
                        SizedBox(
                          width: 10,
                        ),
                        tile2(),
                        SizedBox(
                          width: 10,
                        ),
                        tile2(),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TicketaDeatilsScreen()),
                        );
                      },
                      child: tile()),
                  SizedBox(
                    height: 20,
                  ),
                  tile()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget tile() {
  return Container(
    height: 480,
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
          height: 250,
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
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hoodie",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 3,
              ),
              GradientText(
                'Win 1 Million Cash Prize',
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF167cbf),
                    const Color(0xFFfcce19),
                  ],
                ),
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "3 Winners Out of 20 Tickets",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Draw Date will be announced after all the tickets are sold-out",
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 150,
                        child: CustomButton2(
                          onTap: () {},
                          text: "Start 142.97",
                        )),
                    SizedBox(
                        width: 150,
                        child: CustomButton(
                          onTap: () {},
                          text: "Breakdown",
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 250,
              decoration: BoxDecoration(
                  color: acccolour,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "WINNERS WILL BE DECLARED SOON",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
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

Widget tile2() {
  return Column(
    children: [
      Container(
        height: 300,
        width: 180,
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
              height: 130,
              width: 180,
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    'Win',
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFF167cbf),
                        const Color(0xFFfcce19),
                      ],
                    ),
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "AED200,000 Cash",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 2.5,
                          ),
                          Container(
                            height: 45,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 16.0),
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
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Buy AED7",
                                        style: GoogleFonts.poppins(
                                          color: const Color(0xFF012c49),
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Modesh Shopping Card",
                                        style: GoogleFonts.poppins(
                                          color: const Color(0xFF012c49),
                                          fontSize: 6.0,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  gradient: LinearGradient(
                                    colors: [
                                      const Color(0xFF012c49),
                                      const Color(0xFF167cbf),
                                    ],
                                    stops: [0.0, 0.9],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Center(
                                      child: CartButton(
                                    label: "+",
                                    hight: 50,
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 20,
      )
    ],
  );
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50); // Start at the bottom-left
    path.quadraticBezierTo(
      size.width / 2, // Control point X
      size.height - 30, // Control point Y
      size.width, // End point X
      size.height - 30, // End point Y
    );
    path.lineTo(size.width, 0); // Top-right corner
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
