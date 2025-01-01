import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreenExample extends StatefulWidget {
  @override
  _CartScreenExampleState createState() => _CartScreenExampleState();
}

class _CartScreenExampleState extends State<CartScreenExample> {
  final List<CartItem> cartItems = []; // List to store cart items

  void _addToCart(String itemName) {
    setState(() {
      final existingItem = cartItems.firstWhere(
        (item) => item.name == itemName,
        orElse: () => CartItem(name: itemName, count: 0),
      );

      if (!cartItems.contains(existingItem)) {
        cartItems.add(existingItem);
      }
      existingItem.count++;
    });
  }

  void _showCartBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      builder: (context) {
        return CartBottomSheet(cartItems: cartItems);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Bottom Sheet Example"),
        backgroundColor: const Color(0xFF012c49),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showCartBottomSheet,
        backgroundColor: const Color(0xFF167cbf),
        child: Icon(Icons.shopping_cart, color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CartButton(
              label: "Add Item 1",
              onAddToCart: () => _addToCart("Item 1"),
            ),
            SizedBox(height: 20),
            CartButton(
              label: "Add Item 2",
              onAddToCart: () => _addToCart("Item 2"),
            ),
          ],
        ),
      ),
    );
  }
}

class CartButton extends StatefulWidget {
  final String label;
  final VoidCallback onAddToCart;

  CartButton({required this.label, required this.onAddToCart});

  @override
  _CartButtonState createState() => _CartButtonState();
}

class _CartButtonState extends State<CartButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onAddToCart,
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
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
        child: Center(
          child: Text(
            widget.label,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class CartBottomSheet extends StatelessWidget {
  final List<CartItem> cartItems;

  CartBottomSheet({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Cart",
            style: GoogleFonts.poppins(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: cartItems.isNotEmpty
                ? ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final cartItem = cartItems[index];
                      return ListTile(
                        title: Text(
                          cartItem.name,
                          style: GoogleFonts.poppins(fontSize: 16.0),
                        ),
                        trailing: Text(
                          "x${cartItem.count}",
                          style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  )
                : Center(
                    child: Text(
                      "Your cart is empty",
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Close the bottom sheet
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF167cbf),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Center(
              child: Text(
                "Close",
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartItem {
  final String name;
  int count;

  CartItem({required this.name, this.count = 0});
}
