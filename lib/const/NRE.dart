import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kingroxnew/const/colours.dart';

class CartButton extends StatefulWidget {
  final String label;
  double hight;
  double? wdth;

  CartButton({
    required this.label,
    required this.hight,
  });

  @override
  _CartButtonState createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  bool isAddedToCart = false;
  int itemCount = 1;

  void incrementCount() {
    setState(() {
      itemCount++;
    });
  }

  void decrementCount() {
    setState(() {
      if (itemCount > 1) {
        itemCount--;
      } else {
        isAddedToCart = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.hight,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
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
      child: isAddedToCart
          ? Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: decrementCount,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
                SizedBox(width: 12.0),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text(
                      itemCount.toString(),
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.0),
                GestureDetector(
                  onTap: incrementCount,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Icon(
                      Icons.add,
                      color: acccolour,
                      size: 20,
                    ),
                  ),
                ),
              ],
            )
          : GestureDetector(
              onTap: () {
                setState(() {
                  isAddedToCart = true;
                });
              },
              child: Center(
                child: Text(
                  widget.label,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
    );
  }
}
