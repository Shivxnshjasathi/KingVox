import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingroxnew/const/button.dart';
import 'package:kingroxnew/const/colours.dart';
import 'package:kingroxnew/const/textfield.dart';

class Security extends StatefulWidget {
  const Security({super.key});

  @override
  State<Security> createState() => _SecurityState();
}

class _SecurityState extends State<Security> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Security",
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
                      height: 40,
                    ),
                    CustomTextField(
                      text: "Current Password*",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      text: "New Password*",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      text: "Re-Enter New Password*",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 180,
                          child: CustomButton(
                            onTap: () {},
                            text: "Change",
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
