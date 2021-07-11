import "package:flutter/material.dart";
import 'package:resturant_app/core/navigate.dart';
import 'package:resturant_app/custom_widgets/custom_buttons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_app/screen/login_screen.dart';
import 'package:resturant_app/screen/sign_up.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, top: kToolbarHeight, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                "images/Vector.png",
                color: Colors.orange,
                width: 35.w,
                height: 31.h,
              ),
            ),
            SizedBox(height: 43.h),
            Image.asset(
              "images/hack.png",
              width: 302.7.w,
              height: 325.h,
            ),
            SizedBox(height: 48.h),
            Text(
              "Reserve a table",
              style: TextStyle(
                fontSize: 20,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              "Secure a comfortable spot with a nice view in your favourite african restuarant anywhere you are.",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 40.h),
            CustomElevatedButton(
              text: 'Sign Up',
              onTap: () {
                Navigate.push(context, SingUp_Screen());
              },
            ),
            SizedBox(
              height: 24.h,
            ),
            CustomOutlinedButton(
              text: 'Login',
              onTap: () {
                Navigate.push(context, LoginScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
