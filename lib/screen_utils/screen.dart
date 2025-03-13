import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w), // Responsive padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 10),
                  ],
                ),
                child: Icon(Icons.person, size: 60.sp, color: Colors.teal),
              ),

              SizedBox(height: 30.h), // Responsive spacing

              // Email Input
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r), // Responsive border
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              // Password Input
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),

              SizedBox(height: 30.h),

              // Login Button
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login", style: TextStyle(fontSize: 18.sp)),
                ),
              ),

              SizedBox(height: 15.h),

              // Signup Text
              TextButton(
                onPressed: () {},
                child: Text("Don't have an account? Sign up",
                    style: TextStyle(fontSize: 16.sp)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
