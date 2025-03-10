import 'package:flutter/material.dart';
import 'package:ui_master/Shake.dart';

class ShakeScreen extends StatefulWidget {
  @override
  _ShakeScreenState createState() => _ShakeScreenState();
}

class _ShakeScreenState extends State<ShakeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),

          /// Welcome Text
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome To',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 5),
                Text(
                  'Shake & Juices',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ),

          /// Search Bar
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search for shakes & juices...",
                prefixIcon: Icon(Icons.search, color: Colors.deepOrange),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),

          /// Main Layout with Buttons & Vertical Line
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Buttons Column
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildElevatedButton('Shakes', context, MilkshakeScreen()),
                      SizedBox(height: 20),
                      _buildElevatedButton('Juices', context, MilkshakeScreen()),
                      SizedBox(height: 20),
                      _buildElevatedButton('Smoothies', context, MilkshakeScreen()),
                      SizedBox(height: 20),
                      _buildElevatedButton('Coffee', context, MilkshakeScreen()),
                    ],
                  ),

                  /// Vertical Line
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      width: 2, // Width of the line
                      height: 550, // Adjust height as needed
                      color: Colors.white, // Line color
                    ),
                  ),

                  /// Card Section with Live Images
                  Expanded(
                    child: ListView(
                      children: [
                        _buildItemCard(
                          'https://tastesofhomemade.com/wp-content/uploads/2022/05/Snickers-milkshake-12.jpg',
                          'Delicious Shake',
                          '\$5.99',
                        ),
                        _buildItemCard(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVoVNOfpcgTTD1pj_NMEC8xK2kvpTyw3cF4A&s',
                          'Fresh Juice',
                          '\$4.99',
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Custom Widget for Vertical Buttons
Widget _buildElevatedButton(String text, BuildContext context, Widget page) {
  return RotatedBox(
    quarterTurns: 3, // Rotate text vertically
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.deepOrange,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Square edges
        ),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

/// Custom Widget for Item Cards (Live Images)
Widget _buildItemCard(String imageUrl, String title, String price) {
  return Card(
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
          child: Image.network(imageUrl, height: 150, width: double.infinity, fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                price,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
