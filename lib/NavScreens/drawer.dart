import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kingroxnew/UI/profile/profile.dart';
import 'package:kingroxnew/UI/screens/Draws.dart';
import 'package:kingroxnew/UI/screens/home.dart';
import 'package:kingroxnew/UI/screens/notifications.dart';
import 'package:kingroxnew/UI/screens/wallet.dart';
import 'package:kingroxnew/const/NRE.dart';
import 'package:kingroxnew/const/button.dart';
import 'package:kingroxnew/const/colours.dart';
import 'package:kingroxnew/const/textfield.dart';
import 'package:kingroxnew/menu_screens/earn_money.dart';
import 'package:kingroxnew/menu_screens/myorders.dart';
import 'package:kingroxnew/menu_screens/transactions.dart';
import 'package:kingroxnew/menu_screens/winPrizeList.dart';
import 'package:line_icons/line_icons.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late FancyDrawerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _openBottomSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      builder: (context) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 8,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 400,
                      height: 80,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 4),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.6,
                              child: CustomTextField(
                                text: "Enter Promo Code",
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: acccolour,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Center(
                                child: Text(
                                  "Apply",
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      "Shopping Bag",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 16.0),
                    tile5(),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),
              Spacer(),
              Container(
                height: 105,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total Amount: ",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "AED50.00",
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "SubTotal AED47.62",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 150,
                        child: CustomButton(
                          onTap: () {},
                          text: "Checkout",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Draws(),
    Notifications(),
    Wallet(),
    Profile()
  ];

  get accentColor => null;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: FancyDrawerWrapper(
            backgroundColor: acccolour,
            controller: _controller,
            drawerItems: <Widget>[
              Text(
                "KingRox",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Jone Doe        jonedoe@email.com",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black12),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Icon(
                            LineIcons.home,
                            color: Colors.white,
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Home",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        LineIcons.arrowRight,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Transactions()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.black12),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: Icon(
                              LineIcons.facebookMessenger,
                              color: Colors.white,
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Transactions ",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          LineIcons.arrowRight,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Winprizelist()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.black12),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: Icon(
                              LineIcons.list,
                              color: Colors.white,
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Win Prize List",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          LineIcons.arrowRight,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EarnMoney()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.black12),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: Icon(
                              LineIcons.moneyBill,
                              color: Colors.white,
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Earn Money",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          LineIcons.arrowRight,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Myorders()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.black12),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                                child: Icon(
                              LineIcons.peopleCarry,
                              color: Colors.white,
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "My Orders",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          LineIcons.arrowRight,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black12),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Icon(
                            Icons.logout,
                            color: Colors.white,
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "LogOut",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        LineIcons.arrowRight,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ],
            child: Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: _openBottomSheet,
                backgroundColor: Colors.white,
                shape: CircleBorder(),
                child: Icon(
                  LineIcons.shoppingBag,
                  color: acccolour,
                ),
              ),
              appBar: AppBar(
                title: Text(
                  "KingRox",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                backgroundColor: acccolour,
                automaticallyImplyLeading: false,
                actions: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white10,
                      ),
                      child: Center(
                        child: IconButton(
                            onPressed: () {
                              _controller.toggle();
                            },
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  )
                ],
              ),
              body: _widgetOptions[_selectedIndex],
              bottomNavigationBar: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: Colors.black.withOpacity(0.2),
                    )
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      _buildNavItem(
                        index: 0,
                        isSelected: _selectedIndex == 0,
                        icon: LineIcons.home,
                        label: "Home",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      _buildNavItem(
                        index: 1,
                        isSelected: _selectedIndex == 1,
                        icon: LineIcons.playCircleAlt,
                        label: "Search",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      _buildNavItem(
                        index: 2,
                        isSelected: _selectedIndex == 2,
                        icon: LineIcons.bell,
                        label: "Alerts",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      _buildNavItem(
                        index: 3,
                        isSelected: _selectedIndex == 3,
                        icon: LineIcons.wallet,
                        label: "Wallet",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      _buildNavItem(
                        index: 4,
                        isSelected: _selectedIndex == 4,
                        icon: LineIcons.user,
                        label: "Profile",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }

  Widget _buildNavItem({
    required int index,
    required bool isSelected,
    required IconData icon,
    required String label,
  }) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            height: 70,
            width: 70,
            duration: Duration(milliseconds: 300),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 4),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: isSelected ? acccolour : Colors.grey,
                  size: isSelected ? 30 : 25,
                ),
                SizedBox(height: 4),
                Text(
                  label,
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: Colors.black,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: isSelected ? 8 : 0,
            height: isSelected ? 8 : 0,
            decoration: BoxDecoration(
              color: acccolour,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}

Widget tile5() {
  return Column(
    children: [
      SizedBox(
        width: 400,
        child: Row(
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
                  Text(
                    "AED200,000 Cash",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "You'll get 1 Ticket",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 25,
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
                            width: 150,
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Text(
                                        "               Buy AED7",
                                        style: GoogleFonts.poppins(
                                          color: const Color(0xFF012c49),
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "                     Modesh Shopping Card",
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
                              Row(
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
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 9,
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
