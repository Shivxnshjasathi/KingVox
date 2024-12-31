import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Notifications",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  tite("hello"),
                  SizedBox(
                    height: 20,
                  ),
                  tite("hello"),
                  SizedBox(
                    height: 20,
                  ),
                  tite("hello"),
                  SizedBox(
                    height: 20,
                  ),
                  tite("hello"),
                  SizedBox(
                    height: 20,
                  ),
                  tite("hello"),
                  SizedBox(
                    height: 20,
                  ),
                  tite("hello"),
                ],
              ),
            ),
          )
        ])));
  }
}

Widget tite(String noti) {
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
              child: Center(child: Icon(LineIcons.facebookMessenger)),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Top-up of voucher AED35",
                style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Text(
                "From Wallet",
                style: GoogleFonts.poppins(
                    fontSize: 10, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.black,
          )
        ],
      ),
    ),
  );
}
