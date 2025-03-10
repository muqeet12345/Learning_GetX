import 'package:flutter/material.dart';

class MilkshakeScreen extends StatefulWidget {
  @override
  MilkshakeWidget createState() => MilkshakeWidget();
}

class MilkshakeWidget extends State<MilkshakeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  'https://tastesofhomemade.com/wp-content/uploads/2022/05/Snickers-milkshake-12.jpg', // Replace with actual image URL
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text(
                  'Milkshake',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepOrange),
                ),
                SizedBox(height: 5),
                Text(
                  '\$4.99', // Price
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
