import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingroxnew/UI/screens/Draws.dart';
import 'package:kingroxnew/UI/screens/home.dart';
import 'package:kingroxnew/UI/screens/payment.dart';
import 'package:kingroxnew/const/button.dart';
import 'package:kingroxnew/const/button2.dart';
import 'package:kingroxnew/const/cart.dart';
import 'package:kingroxnew/const/colours.dart';
import 'package:kingroxnew/const/textfield.dart';
import 'package:line_icons/line_icons.dart';

class TicketaDeatilsScreen extends StatefulWidget {
  const TicketaDeatilsScreen({super.key});

  @override
  State<TicketaDeatilsScreen> createState() => _TicketaDeatilsScreenState();
}

class _TicketaDeatilsScreenState extends State<TicketaDeatilsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Details",
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          centerTitle: true,
          backgroundColor: acccolour,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 1500,
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    gdeatile(),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Choose Your Free Ticket",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    tile4("Standard"),
                    tile4("Share Ticket"),
                    tile4("Group Tickets"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 180,
                          child: CustomButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payment()),
                              );
                            },
                            text: "Buy",
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          )
        ])));
  }
}

Widget tile() {
  return Container(
    height: 435,
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
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "AED200,000 Cash",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 2.5,
                      ),
                      Container(
                        height: 55,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Starts From",
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xFF012c49),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Series : FULLFINAL6965",
                                    style: GoogleFonts.poppins(
                                      color: const Color(0xFF012c49),
                                      fontSize: 10.0,
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
                      SizedBox(
                        width: 150,
                        child: CustomButton(
                          onTap: () {},
                          text: "120ADE",
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Draw Date 2 January,2025 or earlier base on the time passed",
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

Widget gdeatile() {
  return Container(
    height: 490,
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
                "Buy Hoodie And",
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
                "Series : FULLFINAL6965",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
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
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Free Raffle Tickets Qty",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 45,
                      child: CustomTextField(
                        text: " 0",
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget tite3(String tesxt, Icon icons) {
  return Container(
    height: 80,
    width: 400,
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 4),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30))),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: icons),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    tesxt,
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Status",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget tile4(String t) {
  return Column(
    children: [
      InkWell(
        onTap: () {},
        child: Container(
          height: 80,
          width: 400,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 4),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  t,
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      )
    ],
  );
}
