import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingroxnew/const/colours.dart';
import 'package:line_icons/line_icons.dart';

class Winprizelist extends StatefulWidget {
  const Winprizelist({super.key});

  @override
  State<Winprizelist> createState() => _WinprizelistState();
}

class _WinprizelistState extends State<Winprizelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Win Prize List",
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
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
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
                  child: Center(child: Icon(LineIcons.wallet)),
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
                    "10 Thousand Cash",
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "RIGHT7922",
                    style: GoogleFonts.poppins(
                        fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "0006  - 2024-12-11",
                    style: GoogleFonts.poppins(
                        fontSize: 10, fontWeight: FontWeight.w500),
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
